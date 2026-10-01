# typed: strong

module Telnyx
  module Models
    class BillingContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BillingContact, Telnyx::Internal::AnyHash)
        end

      # The email address of the person Telnyx should contact about billing for this
      # account.
      sig { returns(String) }
      attr_accessor :email

      # The first name of the person Telnyx should contact about billing for this
      # account.
      sig { returns(String) }
      attr_accessor :first_name

      # The last name of the person Telnyx should contact about billing for this
      # account.
      sig { returns(String) }
      attr_accessor :last_name

      # The phone number of the billing contact, in E.164 format, for example
      # +12125551234.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        params(
          email: String,
          first_name: String,
          last_name: String,
          phone_number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The email address of the person Telnyx should contact about billing for this
        # account.
        email:,
        # The first name of the person Telnyx should contact about billing for this
        # account.
        first_name:,
        # The last name of the person Telnyx should contact about billing for this
        # account.
        last_name:,
        # The phone number of the billing contact, in E.164 format, for example
        # +12125551234.
        phone_number:
      )
      end

      sig do
        override.returns(
          {
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
