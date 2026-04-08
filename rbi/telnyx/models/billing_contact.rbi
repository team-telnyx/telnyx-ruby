# typed: strong

module Telnyx
  module Models
    class BillingContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BillingContact, Telnyx::Internal::AnyHash)
        end

      # Contact's email address
      sig { returns(String) }
      attr_accessor :email

      # Contact's first name
      sig { returns(String) }
      attr_accessor :first_name

      # Contact's last name
      sig { returns(String) }
      attr_accessor :last_name

      # Contact's phone number (10-15 digits)
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
        # Contact's email address
        email:,
        # Contact's first name
        first_name:,
        # Contact's last name
        last_name:,
        # Contact's phone number (10-15 digits)
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
