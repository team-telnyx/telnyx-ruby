# typed: strong

module Telnyx
  module Models
    class DynamicEmergencyAddress < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DynamicEmergencyAddress, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :administrative_area

      sig do
        returns(Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol)
      end
      attr_accessor :country_code

      sig { returns(String) }
      attr_accessor :house_number

      sig { returns(String) }
      attr_accessor :locality

      sig { returns(String) }
      attr_accessor :postal_code

      sig { returns(String) }
      attr_accessor :street_name

      sig { returns(T.nilable(String)) }
      attr_reader :extended_address

      sig { params(extended_address: String).void }
      attr_writer :extended_address

      sig { returns(T.nilable(String)) }
      attr_reader :house_suffix

      sig { params(house_suffix: String).void }
      attr_writer :house_suffix

      sig { returns(T.nilable(String)) }
      attr_reader :street_post_directional

      sig { params(street_post_directional: String).void }
      attr_writer :street_post_directional

      sig { returns(T.nilable(String)) }
      attr_reader :street_pre_directional

      sig { params(street_pre_directional: String).void }
      attr_writer :street_pre_directional

      sig { returns(T.nilable(String)) }
      attr_reader :street_suffix

      sig { params(street_suffix: String).void }
      attr_writer :street_suffix

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date of when the resource was created
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Unique location reference string to be used in SIP INVITE from / p-asserted
      # headers.
      sig { returns(T.nilable(String)) }
      attr_reader :sip_geolocation_id

      sig { params(sip_geolocation_id: String).void }
      attr_writer :sip_geolocation_id

      # Status of dynamic emergency address
      sig do
        returns(
          T.nilable(Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(status: Telnyx::DynamicEmergencyAddress::Status::OrSymbol).void
      end
      attr_writer :status

      # ISO 8601 formatted date of when the resource was last updated
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          administrative_area: String,
          country_code: Telnyx::DynamicEmergencyAddress::CountryCode::OrSymbol,
          house_number: String,
          locality: String,
          postal_code: String,
          street_name: String,
          id: String,
          created_at: String,
          extended_address: String,
          house_suffix: String,
          record_type: String,
          sip_geolocation_id: String,
          status: Telnyx::DynamicEmergencyAddress::Status::OrSymbol,
          street_post_directional: String,
          street_pre_directional: String,
          street_suffix: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        administrative_area:,
        country_code:,
        house_number:,
        locality:,
        postal_code:,
        street_name:,
        id: nil,
        # ISO 8601 formatted date of when the resource was created
        created_at: nil,
        extended_address: nil,
        house_suffix: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Unique location reference string to be used in SIP INVITE from / p-asserted
        # headers.
        sip_geolocation_id: nil,
        # Status of dynamic emergency address
        status: nil,
        street_post_directional: nil,
        street_pre_directional: nil,
        street_suffix: nil,
        # ISO 8601 formatted date of when the resource was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            administrative_area: String,
            country_code:
              Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol,
            house_number: String,
            locality: String,
            postal_code: String,
            street_name: String,
            id: String,
            created_at: String,
            extended_address: String,
            house_suffix: String,
            record_type: String,
            sip_geolocation_id: String,
            status: Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol,
            street_post_directional: String,
            street_pre_directional: String,
            street_suffix: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      module CountryCode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::DynamicEmergencyAddress::CountryCode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US =
          T.let(:US, Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol)
        CA =
          T.let(:CA, Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol)
        PR =
          T.let(:PR, Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DynamicEmergencyAddress::CountryCode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of dynamic emergency address
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::DynamicEmergencyAddress::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol)
        ACTIVATED =
          T.let(
            :activated,
            Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::DynamicEmergencyAddress::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
