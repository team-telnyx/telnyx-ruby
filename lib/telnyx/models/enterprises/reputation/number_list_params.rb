# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#list
        class NumberListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute page_number
          #   1-based page number. Out-of-range values return an empty page with correct meta.
          #
          #   @return [Integer, nil]
          optional :page_number, Integer

          # @!attribute page_size
          #   Items per page. Default 10. Maximum 250; values above are clamped to 250.
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute phone_number
          #   Filter by specific phone number (E.164 format).
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(enterprise_id:, page_number: nil, page_size: nil, phone_number: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::NumberListParams} for more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
          #
          #   @param page_size [Integer] Items per page. Default 10. Maximum 250; values above are clamped to 250.
          #
          #   @param phone_number [String] Filter by specific phone number (E.164 format).
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
