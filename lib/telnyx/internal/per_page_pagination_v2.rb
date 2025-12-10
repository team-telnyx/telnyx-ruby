# frozen_string_literal: true

module Telnyx
  module Internal
    # @generic Elem
    #
    # @example
    #   if per_page_pagination_v2.has_next?
    #     per_page_pagination_v2 = per_page_pagination_v2.next_page
    #   end
    #
    # @example
    #   per_page_pagination_v2.auto_paging_each do |partner_campaign|
    #     puts(partner_campaign)
    #   end
    class PerPagePaginationV2
      include Telnyx::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :records

      # @return [Integer]
      attr_accessor :page

      # @return [Integer]
      attr_accessor :total_records

      # @return [Boolean]
      def next_page?
        !records.to_a.empty? && (page.nil? || total_records.nil? || page < total_records)
      end

      # @raise [Telnyx::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Telnyx::Internal::Util.deep_merge(@req, {query: {page: (page || 1).to_i.succ}})
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
          page.records&.each(&blk)

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
        in {records: Array => records}
          @records = records.map { Telnyx::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @page = page_data[:page]
        @total_records = page_data[:totalRecords]
      end

      # @api private
      #
      # @return [String]
      def inspect
        # rubocop:disable Layout/LineLength
        model = Telnyx::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} page=#{page.inspect} total_records=#{total_records.inspect}>"
        # rubocop:enable Layout/LineLength
      end
    end
  end
end
