# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderEndUserAdmin < Telnyx::Internal::Type::BaseModel
      # @!attribute account_number
      #   The authorized person's account number with the current service provider
      #
      #   @return [String, nil]
      optional :account_number, String

      # @!attribute auth_person_name
      #   Name of person authorizing the porting order
      #
      #   @return [String, nil]
      optional :auth_person_name, String

      # @!attribute billing_phone_number
      #   Billing phone number associated with these phone numbers
      #
      #   @return [String, nil]
      optional :billing_phone_number, String

      # @!attribute business_identifier
      #   European business identification number. Applicable only in the European Union
      #
      #   @return [String, nil]
      optional :business_identifier, String

      # @!attribute entity_name
      #   Person Name or Company name requesting the port
      #
      #   @return [String, nil]
      optional :entity_name, String

      # @!attribute pin_passcode
      #   PIN/passcode possibly required by the old service provider for extra
      #   verification
      #
      #   @return [String, nil]
      optional :pin_passcode, String

      # @!attribute tax_identifier
      #   European tax identification number. Applicable only in the European Union
      #
      #   @return [String, nil]
      optional :tax_identifier, String

      # @!method initialize(account_number: nil, auth_person_name: nil, billing_phone_number: nil, business_identifier: nil, entity_name: nil, pin_passcode: nil, tax_identifier: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrderEndUserAdmin} for more details.
      #
      #   @param account_number [String] The authorized person's account number with the current service provider
      #
      #   @param auth_person_name [String] Name of person authorizing the porting order
      #
      #   @param billing_phone_number [String] Billing phone number associated with these phone numbers
      #
      #   @param business_identifier [String] European business identification number. Applicable only in the European Union
      #
      #   @param entity_name [String] Person Name or Company name requesting the port
      #
      #   @param pin_passcode [String] PIN/passcode possibly required by the old service provider for extra verificatio
      #
      #   @param tax_identifier [String] European tax identification number. Applicable only in the European Union
    end
  end
end
