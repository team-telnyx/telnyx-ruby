# frozen_string_literal: true

module Telnyx
  module Models
    module Reputation
      # @see Telnyx::Resources::Reputation::Numbers#list
      class NumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_enterprise_id
        #   Filter by enterprise ID.
        #
        #   @return [String, nil]
        optional :filter_enterprise_id, String

        # @!attribute filter_phone_number_contains
        #   Partial match on phone number. Must contain at least 5 digits.
        #
        #   @return [String, nil]
        optional :filter_phone_number_contains, String

        # @!attribute filter_phone_number_eq
        #   Exact phone-number match (E.164).
        #
        #   @return [String, nil]
        optional :filter_phone_number_eq, String

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

        # @!method initialize(filter_enterprise_id: nil, filter_phone_number_contains: nil, filter_phone_number_eq: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Reputation::NumberListParams} for more details.
        #
        #   @param filter_enterprise_id [String] Filter by enterprise ID.
        #
        #   @param filter_phone_number_contains [String] Partial match on phone number. Must contain at least 5 digits.
        #
        #   @param filter_phone_number_eq [String] Exact phone-number match (E.164).
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
