# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#list
    class EmailBlockListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_created_after
      #   `created_at > value` (ISO 8601).
      #
      #   @return [Time, nil]
      optional :filter_created_after, Time

      # @!attribute filter_created_before
      #   `created_at < value` (ISO 8601).
      #
      #   @return [Time, nil]
      optional :filter_created_before, Time

      # @!attribute filter_domain_id
      #   Exact-match filter on domain_id (UUID).
      #
      #   @return [String, nil]
      optional :filter_domain_id, String

      # @!attribute filter_reason
      #   Exact-match filter on reason.
      #
      #   @return [Symbol, Telnyx::Models::EmailBlockListParams::FilterReason, nil]
      optional :filter_reason, enum: -> { Telnyx::EmailBlockListParams::FilterReason }

      # @!attribute page_after
      #   Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode;
      #   mutually exclusive with `page[number]` and `page[before]`.
      #
      #   @return [String, nil]
      optional :page_after, String

      # @!attribute page_before
      #   Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and
      #   `page[number]`.
      #
      #   @return [String, nil]
      optional :page_before, String

      # @!attribute page_number
      #   Offset page number (≥1, default 1).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size (1–100, default 25).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sort field. Leading `-` = desc; only `created_at` is sortable. Default
      #   `-created_at`. `--` is an error.
      #
      #   @return [Symbol, Telnyx::Models::EmailBlockListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::EmailBlockListParams::Sort }

      # @!method initialize(filter_created_after: nil, filter_created_before: nil, filter_domain_id: nil, filter_reason: nil, page_after: nil, page_before: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailBlockListParams} for more details.
      #
      #   @param filter_created_after [Time] `created_at > value` (ISO 8601).
      #
      #   @param filter_created_before [Time] `created_at < value` (ISO 8601).
      #
      #   @param filter_domain_id [String] Exact-match filter on domain_id (UUID).
      #
      #   @param filter_reason [Symbol, Telnyx::Models::EmailBlockListParams::FilterReason] Exact-match filter on reason.
      #
      #   @param page_after [String] Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode; mutua
      #
      #   @param page_before [String] Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and `pa
      #
      #   @param page_number [Integer] Offset page number (≥1, default 1).
      #
      #   @param page_size [Integer] Page size (1–100, default 25).
      #
      #   @param sort [Symbol, Telnyx::Models::EmailBlockListParams::Sort] Sort field. Leading `-` = desc; only `created_at` is sortable. Default `-created
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Exact-match filter on reason.
      module FilterReason
        extend Telnyx::Internal::Type::Enum

        HARD_BOUNCE = :hard_bounce
        SPAM_COMPLAINT = :spam_complaint
        UNSUBSCRIBE = :unsubscribe
        INVALID = :invalid
        MANUAL_BLOCK = :manual_block

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
      # `-created_at`. `--` is an error.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
