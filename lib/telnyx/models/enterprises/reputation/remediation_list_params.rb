# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#list
        class RemediationListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute filter_created_at_gte
          #   Only requests created on or after this timestamp (ISO 8601).
          #
          #   @return [Time, nil]
          optional :filter_created_at_gte, Time

          # @!attribute filter_created_at_lte
          #   Only requests created on or before this timestamp (ISO 8601).
          #
          #   @return [Time, nil]
          optional :filter_created_at_lte, Time

          # @!attribute filter_status
          #   Filter by customer-facing status.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationStatus, nil]
          optional :filter_status, enum: -> { Telnyx::Enterprises::Reputation::RemediationStatus }

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

          # @!method initialize(enterprise_id:, filter_created_at_gte: nil, filter_created_at_lte: nil, filter_status: nil, page_number: nil, page_size: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::RemediationListParams} for more
          #   details.
          #
          #   @param enterprise_id [String]
          #
          #   @param filter_created_at_gte [Time] Only requests created on or after this timestamp (ISO 8601).
          #
          #   @param filter_created_at_lte [Time] Only requests created on or before this timestamp (ISO 8601).
          #
          #   @param filter_status [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationStatus] Filter by customer-facing status.
          #
          #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
          #
          #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
