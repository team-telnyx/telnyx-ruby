# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#check_eligibility
    class MessagingHostedNumberOrderCheckEligibilityParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute phone_numbers
      #   List of phone numbers to check eligibility
      #
      #   @return [Array<String>]
      required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(phone_numbers:, request_options: {})
      #   @param phone_numbers [Array<String>] List of phone numbers to check eligibility
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
