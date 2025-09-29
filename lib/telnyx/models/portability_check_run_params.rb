# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortabilityChecks#run
    class PortabilityCheckRunParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_numbers
      #   The list of +E.164 formatted phone numbers to check for portability
      #
      #   @return [Array<String>, nil]
      optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(phone_numbers: nil, request_options: {})
      #   @param phone_numbers [Array<String>] The list of +E.164 formatted phone numbers to check for portability
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
