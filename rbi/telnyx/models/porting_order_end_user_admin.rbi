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
      attr_accessor :account_number

      # Name of person authorizing the porting order
      sig { returns(T.nilable(String)) }
      attr_accessor :auth_person_name

      # Billing phone number associated with these phone numbers
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_phone_number

      # European business identification number. Applicable only in the European Union
      sig { returns(T.nilable(String)) }
      attr_accessor :business_identifier

      # Person Name or Company name requesting the port
      sig { returns(T.nilable(String)) }
      attr_accessor :entity_name

      # PIN/passcode possibly required by the old service provider for extra
      # verification
      sig { returns(T.nilable(String)) }
      attr_accessor :pin_passcode

      # European tax identification number. Applicable only in the European Union
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_identifier

      sig do
        params(
          account_number: T.nilable(String),
          auth_person_name: T.nilable(String),
          billing_phone_number: T.nilable(String),
          business_identifier: T.nilable(String),
          entity_name: T.nilable(String),
          pin_passcode: T.nilable(String),
          tax_identifier: T.nilable(String)
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
            account_number: T.nilable(String),
            auth_person_name: T.nilable(String),
            billing_phone_number: T.nilable(String),
            business_identifier: T.nilable(String),
            entity_name: T.nilable(String),
            pin_passcode: T.nilable(String),
            tax_identifier: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
