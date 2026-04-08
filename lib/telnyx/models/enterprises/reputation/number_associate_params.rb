# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#associate
        class NumberAssociateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute phone_numbers
          #   List of phone numbers to associate for reputation monitoring (max 100)
          #
          #   @return [Array<String>]
          required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(enterprise_id:, phone_numbers:, request_options: {})
          #   @param enterprise_id [String]
          #
          #   @param phone_numbers [Array<String>] List of phone numbers to associate for reputation monitoring (max 100)
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
