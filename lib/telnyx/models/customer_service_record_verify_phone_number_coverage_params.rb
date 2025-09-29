# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#verify_phone_number_coverage
    class CustomerServiceRecordVerifyPhoneNumberCoverageParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_numbers
      #   The phone numbers list to be verified.
      #
      #   @return [Array<String>]
      required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(phone_numbers:, request_options: {})
      #   @param phone_numbers [Array<String>] The phone numbers list to be verified.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
