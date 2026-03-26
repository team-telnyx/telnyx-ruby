# typed: strong

module Telnyx
  module Models
    class PhysicalAddress < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhysicalAddress, Telnyx::Internal::AnyHash)
        end

      # State or province
      sig { returns(String) }
      attr_accessor :administrative_area

      # City name
      sig { returns(String) }
      attr_accessor :city

      # Country name (e.g., United States)
      sig { returns(String) }
      attr_accessor :country

      # ZIP or postal code
      sig { returns(String) }
      attr_accessor :postal_code

      # Street address
      sig { returns(String) }
      attr_accessor :street_address

      # Additional address line (suite, apt, etc.)
      sig { returns(T.nilable(String)) }
      attr_accessor :extended_address

      sig do
        params(
          administrative_area: String,
          city: String,
          country: String,
          postal_code: String,
          street_address: String,
          extended_address: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # State or province
        administrative_area:,
        # City name
        city:,
        # Country name (e.g., United States)
        country:,
        # ZIP or postal code
        postal_code:,
        # Street address
        street_address:,
        # Additional address line (suite, apt, etc.)
        extended_address: nil
      )
      end

      sig do
        override.returns(
          {
            administrative_area: String,
            city: String,
            country: String,
            postal_code: String,
            street_address: String,
            extended_address: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
