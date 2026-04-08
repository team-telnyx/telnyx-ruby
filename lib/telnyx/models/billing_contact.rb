# frozen_string_literal: true

module Telnyx
  module Models
    class BillingContact < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #   Contact's email address
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   Contact's first name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   Contact's last name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone_number
      #   Contact's phone number (10-15 digits)
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(email:, first_name:, last_name:, phone_number:)
      #   @param email [String] Contact's email address
      #
      #   @param first_name [String] Contact's first name
      #
      #   @param last_name [String] Contact's last name
      #
      #   @param phone_number [String] Contact's phone number (10-15 digits)
    end
  end
end
