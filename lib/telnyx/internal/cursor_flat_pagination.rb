# frozen_string_literal: true

module Telnyx
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor_flat_pagination.has_next?
    #     cursor_flat_pagination = cursor_flat_pagination.next_page
    #   end
    #
    # @example
    #   cursor_flat_pagination.auto_paging_each do |key|
    #     puts(key)
    #   end
    class CursorFlatPagination
      include Telnyx::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !meta&.cursor.to_s.empty?
      end

      # @raise [Telnyx::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Telnyx::Internal::Util.deep_merge(@req, {query: {cursor: meta&.cursor}})
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
          @meta = Telnyx::Internal::Type::Converter.coerce(Telnyx::Internal::CursorFlatPagination::Meta, meta)
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
        # @!attribute cursor
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute has_more
        #
        #   @return [Boolean, nil]
        optional :has_more, Telnyx::Internal::Type::Boolean

        # @!method initialize(cursor: nil, has_more: nil)
        #   @param cursor [String]
        #   @param has_more [Boolean]
      end
    end
  end
end
