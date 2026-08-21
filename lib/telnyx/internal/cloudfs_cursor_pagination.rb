# frozen_string_literal: true

module Telnyx
  module Internal
    # @generic Elem
    #
    # @example
    #   if cloudfs_cursor_pagination.has_next?
    #     cloudfs_cursor_pagination = cloudfs_cursor_pagination.next_page
    #   end
    #
    # @example
    #   cloudfs_cursor_pagination.auto_paging_each do |cloudf|
    #     puts(cloudf)
    #   end
    class CloudfsCursorPagination
      include Telnyx::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Meta]
      attr_accessor :meta

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !meta&.cursors&.after.to_s.empty?
      end

      # @raise [Telnyx::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Telnyx::Internal::Util.deep_merge(@req, {query: {"page[after]": meta&.cursors&.after}})
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
          @meta = Telnyx::Internal::Type::Converter.coerce(
            Telnyx::Internal::CloudfsCursorPagination::Meta,
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
        # @!attribute cursors
        #
        #   @return [Meta::Cursors, nil]
        optional :cursors, -> { Meta::Cursors }

        # @!method initialize(cursors: nil)
        #   @param cursors [Meta::Cursors]

        # @see Meta#cursors
        class Cursors < Telnyx::Internal::Type::BaseModel
          # @!attribute after
          #
          #   @return [String, nil]
          optional :after, String

          # @!method initialize(after: nil)
          #   @param after [String]
        end
      end
    end
  end
end
