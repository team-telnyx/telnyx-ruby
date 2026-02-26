# frozen_string_literal: true

module Telnyx
  module Models
    class PhoneNumbersJobPhoneNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   The phone number's ID
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute phone_number
      #   The phone number in e164 format.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!method initialize(id: nil, phone_number: nil)
      #   @param id [String] The phone number's ID
      #
      #   @param phone_number [String] The phone number in e164 format.
    end
  end
end
