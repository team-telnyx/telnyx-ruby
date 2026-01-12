# typed: strong

module Telnyx
  module Models
    class PortingOrderEndUserLocation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderEndUserLocation, Telnyx::Internal::AnyHash)
        end

      # State, province, or similar of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :administrative_area

      # ISO3166-1 alpha-2 country code of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :country_code

      # Second line of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :extended_address

      # City or municipality of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :locality

      # Postal Code of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :postal_code

      # First line of billing address
      sig { returns(T.nilable(String)) }
      attr_accessor :street_address

      sig do
        params(
          administrative_area: T.nilable(String),
          country_code: T.nilable(String),
          extended_address: T.nilable(String),
          locality: T.nilable(String),
          postal_code: T.nilable(String),
          street_address: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # State, province, or similar of billing address
        administrative_area: nil,
        # ISO3166-1 alpha-2 country code of billing address
        country_code: nil,
        # Second line of billing address
        extended_address: nil,
        # City or municipality of billing address
        locality: nil,
        # Postal Code of billing address
        postal_code: nil,
        # First line of billing address
        street_address: nil
      )
      end

      sig do
        override.returns(
          {
            administrative_area: T.nilable(String),
            country_code: T.nilable(String),
            extended_address: T.nilable(String),
            locality: T.nilable(String),
            postal_code: T.nilable(String),
            street_address: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
