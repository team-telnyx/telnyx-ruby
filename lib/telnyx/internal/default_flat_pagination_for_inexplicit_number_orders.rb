# frozen_string_literal: true

module Telnyx
  module Internal
    # @generic Elem
    #
    # @example
    #   if default_flat_pagination_for_inexplicit_number_orders.has_next?
    #     default_flat_pagination_for_inexplicit_number_orders =
    #       default_flat_pagination_for_inexplicit_number_orders.next_page
    #   end
    #
    # @example
    #   default_flat_pagination_for_inexplicit_number_orders.auto_paging_each do |inexplicit_number_order|
    #     puts(inexplicit_number_order)
    #   end
    class DefaultFlatPaginationForInexplicitNumberOrders
      include Telnyx::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && (meta&.page_number.nil? || meta&.total_pages.nil? || (meta&.page_number&.< meta&.total_pages))
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
          {query: {page_number: (meta&.page_number || 1).to_i.succ}}
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
          page.data&.each(&blk)

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
        in {data: Array => data}
          @data = data.map { Telnyx::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        case page_data
        in {meta: Hash | nil => meta}
          @meta =
            Telnyx::Internal::Type::Converter.coerce(
              Telnyx::Internal::DefaultFlatPaginationForInexplicitNumberOrders::Meta,
              meta
            )
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

      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!method initialize(page_number: nil, total_pages: nil)
        #   @param page_number [Integer]
        #   @param total_pages [Integer]
      end
    end
  end
end
