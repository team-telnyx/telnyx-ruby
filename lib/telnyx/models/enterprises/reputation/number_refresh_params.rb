# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#refresh
        class NumberRefreshParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute phone_numbers
          #   Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
          #   E.164 format. Reputation refreshes are subject to per-enterprise rate limits.
          #
          #   @return [Array<String>]
          required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(enterprise_id:, phone_numbers:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::NumberRefreshParams} for more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param phone_numbers [Array<String>] Phone numbers to refresh reputation data for. 1–100 numbers per request, each in
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
