# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Dir#list
      class DirListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

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

        # @!attribute filter_expiring_at_gte
        #   Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        #
        #   @return [Time, nil]
        optional :filter_expiring_at_gte, Time

        # @!attribute filter_expiring_at_lte
        #   Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        #
        #   @return [Time, nil]
        optional :filter_expiring_at_lte, Time

        # @!attribute filter_expiring_within_days
        #   Convenience: returns DIRs whose `expiring_at` falls within the next N days
        #   (1–365). Equivalent to setting `filter[expiring_at][gte]=<now>` +
        #   `filter[expiring_at][lte]=<now+N>`. Mutually exclusive with the explicit
        #   `[gte]`/`[lte]` filters - combining returns 400.
        #
        #   @return [Integer, nil]
        optional :filter_expiring_within_days, Integer

        # @!attribute filter_status
        #   Filter by DIR status.
        #
        #   @return [Symbol, Telnyx::Models::DirStatus, nil]
        optional :filter_status, enum: -> { Telnyx::DirStatus }

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
        #   Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
        #   `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
        #   Default `-created_at`.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::DirListParams::Sort, nil]
        optional :sort, enum: -> { Telnyx::Enterprises::DirListParams::Sort }

        # @!method initialize(enterprise_id:, filter_call_reason_contains: nil, filter_display_name_contains: nil, filter_expiring_at_gte: nil, filter_expiring_at_lte: nil, filter_expiring_within_days: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::DirListParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param filter_call_reason_contains [String] Case-insensitive partial match on call reason.
        #
        #   @param filter_display_name_contains [String] Case-insensitive partial match on display name.
        #
        #   @param filter_expiring_at_gte [Time] Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        #
        #   @param filter_expiring_at_lte [Time] Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        #
        #   @param filter_expiring_within_days [Integer] Convenience: returns DIRs whose `expiring_at` falls within the next N days (1–36
        #
        #   @param filter_status [Symbol, Telnyx::Models::DirStatus] Filter by DIR status.
        #
        #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @param sort [Symbol, Telnyx::Models::Enterprises::DirListParams::Sort] Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`, `subm
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
        # `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
        # Default `-created_at`.
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
          SUBMITTED_AT = :submitted_at
          MINUS_SUBMITTED_AT = :"-submitted_at"
          VERIFIED_AT = :verified_at
          MINUS_VERIFIED_AT = :"-verified_at"
          EXPIRING_AT = :expiring_at
          MINUS_EXPIRING_AT = :"-expiring_at"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
