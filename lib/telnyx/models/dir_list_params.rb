# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#list
    class DirListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_call_reason_contains
      #   Case-insensitive partial match on call reason.
      #
      #   @return [String, nil]
      optional :filter_call_reason_contains, String

      # @!attribute filter_display_name_contains
      #   Case-insensitive partial match on display name.
      #
      #   @return [String, nil]
      optional :filter_display_name_contains, String

      # @!attribute filter_enterprise_id
      #   Filter by enterprise ID.
      #
      #   @return [String, nil]
      optional :filter_enterprise_id, String

      # @!attribute filter_expiring_at_gte
      #   Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
      #   Pairs with the `[lte]` variant to build renewal-window dashboards.
      #
      #   @return [Time, nil]
      optional :filter_expiring_at_gte, Time

      # @!attribute filter_expiring_at_lte
      #   Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
      #
      #   @return [Time, nil]
      optional :filter_expiring_at_lte, Time

      # @!attribute filter_status
      #   Filter by DIR status.
      #
      #   @return [Symbol, Telnyx::Models::DirListParams::FilterStatus, nil]
      optional :filter_status, enum: -> { Telnyx::DirListParams::FilterStatus }

      # @!attribute page_number
      #   1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Items per page. Maximum 250; values above are clamped to 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
      #   `status`. Prefix with `-` for descending. Default `-created_at`.
      #
      #   @return [Symbol, Telnyx::Models::DirListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::DirListParams::Sort }

      # @!method initialize(filter_call_reason_contains: nil, filter_display_name_contains: nil, filter_enterprise_id: nil, filter_expiring_at_gte: nil, filter_expiring_at_lte: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirListParams} for more details.
      #
      #   @param filter_call_reason_contains [String] Case-insensitive partial match on call reason.
      #
      #   @param filter_display_name_contains [String] Case-insensitive partial match on display name.
      #
      #   @param filter_enterprise_id [String] Filter by enterprise ID.
      #
      #   @param filter_expiring_at_gte [Time] Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp. Pai
      #
      #   @param filter_expiring_at_lte [Time] Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
      #
      #   @param filter_status [Symbol, Telnyx::Models::DirListParams::FilterStatus] Filter by DIR status.
      #
      #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
      #
      #   @param sort [Symbol, Telnyx::Models::DirListParams::Sort] Sort field. Allowed values: `created_at`, `updated_at`, `display_name`, `status`
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by DIR status.
      module FilterStatus
        extend Telnyx::Internal::Type::Enum

        DRAFT = :draft
        SUBMITTED = :submitted
        IN_REVIEW = :in_review
        VERIFIED = :verified
        REJECTED = :rejected
        UNSUCCESSFUL = :unsuccessful
        SUSPENDED = :suspended
        EXPIRED = :expired
        INFRINGEMENT_CLAIMED = :infringement_claimed
        PERMANENTLY_REJECTED = :permanently_rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
      # `status`. Prefix with `-` for descending. Default `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"
        UPDATED_AT = :updated_at
        UPDATED_AT_DESC = :"-updated_at"
        DISPLAY_NAME = :display_name
        MINUS_DISPLAY_NAME = :"-display_name"
        STATUS = :status
        STATUS_DESC = :"-status"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
