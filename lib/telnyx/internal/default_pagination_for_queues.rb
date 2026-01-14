# frozen_string_literal: true

module Telnyx
  module Internal
    # @generic Elem
    #
    # @example
    #   if default_pagination_for_queues.has_next?
    #     default_pagination_for_queues = default_pagination_for_queues.next_page
    #   end
    #
    # @example
    #   default_pagination_for_queues.auto_paging_each do |queue|
    #     puts(queue)
    #   end
    class DefaultPaginationForQueues
      include Telnyx::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :queues

      # @return [Boolean]
      def next_page?
        !queues.to_a.empty?
      end

      # @raise [Telnyx::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Telnyx::Internal::Util.deep_merge(
          @req,
          {query: {page: @req.fetch(:query).fetch(:page, 1).to_i.succ}}
        )
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.queues&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Telnyx::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {queues: Array => queues}
          @queues = queues.map { Telnyx::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Telnyx::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)}>"
      end
    end
  end
end
