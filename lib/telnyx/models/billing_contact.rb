# frozen_string_literal: true

module Telnyx
  module Models
    class BillingContact < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #   The email address of the person Telnyx should contact about billing for this
      #   account.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   The first name of the person Telnyx should contact about billing for this
      #   account.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute last_name
      #   The last name of the person Telnyx should contact about billing for this
      #   account.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone_number
      #   The phone number of the billing contact, in E.164 format, for example
      #   +12125551234.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(email:, first_name:, last_name:, phone_number:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BillingContact} for more details.
      #
      #   @param email [String] The email address of the person Telnyx should contact about billing for this acc
      #
      #   @param first_name [String] The first name of the person Telnyx should contact about billing for this accoun
      #
      #   @param last_name [String] The last name of the person Telnyx should contact about billing for this account
      #
      #   @param phone_number [String] The phone number of the billing contact, in E.164 format, for example +121255512
    end
  end
end
