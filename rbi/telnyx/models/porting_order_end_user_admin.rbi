# typed: strong

module Telnyx
  module Models
    class PortingOrderEndUserAdmin < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderEndUserAdmin, Telnyx::Internal::AnyHash)
        end

      # The authorized person's account number with the current service provider
      sig { returns(T.nilable(String)) }
      attr_reader :account_number

      sig { params(account_number: String).void }
      attr_writer :account_number

      # Name of person authorizing the porting order
      sig { returns(T.nilable(String)) }
      attr_reader :auth_person_name

      sig { params(auth_person_name: String).void }
      attr_writer :auth_person_name

      # Billing phone number associated with these phone numbers
      sig { returns(T.nilable(String)) }
      attr_reader :billing_phone_number

      sig { params(billing_phone_number: String).void }
      attr_writer :billing_phone_number

      # European business identification number. Applicable only in the European Union
      sig { returns(T.nilable(String)) }
      attr_reader :business_identifier

      sig { params(business_identifier: String).void }
      attr_writer :business_identifier

      # Person Name or Company name requesting the port
      sig { returns(T.nilable(String)) }
      attr_reader :entity_name

      sig { params(entity_name: String).void }
      attr_writer :entity_name

      # PIN/passcode possibly required by the old service provider for extra
      # verification
      sig { returns(T.nilable(String)) }
      attr_reader :pin_passcode

      sig { params(pin_passcode: String).void }
      attr_writer :pin_passcode

      # European tax identification number. Applicable only in the European Union
      sig { returns(T.nilable(String)) }
      attr_reader :tax_identifier

      sig { params(tax_identifier: String).void }
      attr_writer :tax_identifier

      sig do
        params(
          account_number: String,
          auth_person_name: String,
          billing_phone_number: String,
          business_identifier: String,
          entity_name: String,
          pin_passcode: String,
          tax_identifier: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The authorized person's account number with the current service provider
        account_number: nil,
        # Name of person authorizing the porting order
        auth_person_name: nil,
        # Billing phone number associated with these phone numbers
        billing_phone_number: nil,
        # European business identification number. Applicable only in the European Union
        business_identifier: nil,
        # Person Name or Company name requesting the port
        entity_name: nil,
        # PIN/passcode possibly required by the old service provider for extra
        # verification
        pin_passcode: nil,
        # European tax identification number. Applicable only in the European Union
        tax_identifier: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            auth_person_name: String,
            billing_phone_number: String,
            business_identifier: String,
            entity_name: String,
            pin_passcode: String,
            tax_identifier: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
