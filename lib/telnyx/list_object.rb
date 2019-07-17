# frozen_string_literal: true

module Telnyx
  class ListObject < TelnyxObject
    include Enumerable
    include Telnyx::APIOperations::List
    include Telnyx::APIOperations::Request
    include Telnyx::APIOperations::Create

    # This accessor allows a `ListObject` to inherit various filters that were
    # given to a predecessor. This allows for things like consistent limits,
    # expansions, and predicates as a user pages through resources.
    attr_accessor :filters

    # An empty list object. This is returned from +next+ when we know that
    # there isn't a next page in order to replicate the behavior of the API
    # when it attempts to return a page beyond the last.
    def self.empty_list(opts = {})
      ListObject.construct_from({ data: [] }, opts)
    end

    def initialize(*args)
      super
      self.filters = {}
    end

    def [](k)
      case k
      when String, Symbol
        super
      else
        raise ArgumentError, "You tried to access the #{k.inspect} index, but ListObject types only support String keys. (HINT: List calls return an object with a 'data' (which is the data array). You likely want to call #data[#{k.inspect}])"
      end
    end

    # Iterates through each resource in the page represented by the current
    # `ListObject`.
    #
    # Note that this method makes no effort to fetch a new page when it gets to
    # the end of the current page's resources. See also +auto_paging_each+.
    def each(&blk)
      data.each(&blk)
    end

    # Iterates through each resource in all pages, making additional fetches to
    # the API as necessary.
    #
    # Note that this method will make as many API calls as necessary to fetch
    # all resources. For more granular control, please see +each+ and
    # +next_page+.
    def auto_paging_each(&blk)
      return enum_for(:auto_paging_each) unless block_given?

      page = self
      loop do
        page.each(&blk)
        page = page.next_page
        break if page.empty?
      end
    end

    # Iterates through each resource in all pages, making additional fetches to
    # the API as necessary.
    #
    # Note that this method will make as many API calls as necessary to fetch
    # all resources. For more granular control, please see +each+ and
    # +next_page_by_token+.
    def auto_paging_each_by_token(&blk)
      return enum_for(:auto_paging_each_by_token) unless block_given?

      page = self
      loop do
        page.each(&blk)
        page = page.next_page_by_token
        break if page.empty?
      end
    end

    # Returns true if the page object contains no elements.
    def empty?
      data.empty?
    end

    def retrieve(id, opts = {})
      id, retrieve_params = Util.normalize_id(id)
      resp, opts = request(:get, "#{resource_url}/#{CGI.escape(id)}", retrieve_params, opts)
      Util.convert_to_telnyx_object(resp.data, opts)
    end

    def more?
      !data.empty? && meta[:page_number] && meta[:total_pages] && meta[:total_pages] > meta[:page_number]
    end

    # Fetches the next page in the resource list (if there is one).
    #
    # This method will try to respect the limit of the current page. If none
    # was given, the default limit will be fetched again.
    def next_page(params = {}, opts = {})
      return self.class.empty_list(opts) unless more?
      next_page_number = page_number.to_i + 1
      pagination = { number: next_page_number, size: page_size(filters) }
      params = filters.merge(params).merge(page: pagination)

      list(params, opts)
    end

    def next_page_by_token(params = {}, opts = {})
      return self.class.empty_list(opts) unless token
      pagination = { token: token }
      params = filters.merge(params).merge(page: pagination)

      list(params, opts)
    end

    # Fetches the previous page in the resource list (if there is one).
    #
    # This method will try to respect the limit of the current page. If none
    # was given, the default limit will be fetched again.
    def previous_page(params = {}, opts = {})
      prev_page_number = page_number.to_i - 1
      prev_page_number = [prev_page_number, 1].max
      pagination = { number: prev_page_number, size: page_size(filters) }
      params = filters.merge(params).merge(page: pagination)

      list(params, opts)
    end

    # Fetch the current page size
    def page_size(params)
      if params && params[:page] && params[:page][:size]
        params[:page][:size]
      else
        20
      end
    end

    # Fetch the current page number
    def page_number
      if meta && meta[:page_number]
        meta.page_number
      else
        1
      end
    end

    def token
      return meta.next_page_token if meta && meta[:next_page_token]
    end

    def resource_url
      url ||
        raise(ArgumentError, "List object does not contain a 'url' field.")
    end
  end
end
