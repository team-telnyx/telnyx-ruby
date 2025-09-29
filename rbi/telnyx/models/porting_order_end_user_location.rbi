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
      attr_reader :administrative_area

      sig { params(administrative_area: String).void }
      attr_writer :administrative_area

      # ISO3166-1 alpha-2 country code of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # Second line of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :extended_address

      sig { params(extended_address: String).void }
      attr_writer :extended_address

      # City or municipality of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :locality

      sig { params(locality: String).void }
      attr_writer :locality

      # Postal Code of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # First line of billing address
      sig { returns(T.nilable(String)) }
      attr_reader :street_address

      sig { params(street_address: String).void }
      attr_writer :street_address

      sig do
        params(
          administrative_area: String,
          country_code: String,
          extended_address: String,
          locality: String,
          postal_code: String,
          street_address: String
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
            administrative_area: String,
            country_code: String,
            extended_address: String,
            locality: String,
            postal_code: String,
            street_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
