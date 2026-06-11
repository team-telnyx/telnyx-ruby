# frozen_string_literal: true

module Telnyx
  module Models
    class BillingContact < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone_number
      #   E.164 format with leading `+`.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(email:, first_name:, last_name:, phone_number:)
      #   @param email [String]
      #
      #   @param first_name [String]
      #
      #   @param last_name [String]
      #
      #   @param phone_number [String] E.164 format with leading `+`.
    end
  end
end
