# typed: strong

module Telnyx
  module Models
    class UserProfileAPI < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::UserProfileAPI, Telnyx::Internal::AnyHash)
        end

      # Identifier of the user profile, distinct from the user ID.
      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      # First line of the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_1

      # Second line of the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :address_2

      # Business name associated with the profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :business_name

      # City in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :city

      # Country code in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :country

      # The user's data locality: USA (United States), DEU (Germany), AUS (Australia),
      # UAE (United Arab Emirates), or CAN (Canada).
      sig do
        returns(T.nilable(Telnyx::UserProfileAPI::DataLocality::TaggedSymbol))
      end
      attr_accessor :data_locality

      # Status of the user's data locality migration, or null when no migration status
      # is recorded.
      sig do
        returns(
          T.nilable(
            Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
          )
        )
      end
      attr_accessor :data_locality_migration_status

      # Timestamp when the user's data locality was last changed, or null if it has not
      # been changed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :data_locality_updated_at

      # The user's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      # The user's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      # Contact phone number associated with the profile.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # Identifies the type of resource.
      sig do
        returns(T.nilable(Telnyx::UserProfileAPI::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::UserProfileAPI::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # State or region in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :state

      # Timestamp of the most recent profile update.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # Identifier of the user who owns this profile.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Postal code in the profile address.
      sig { returns(T.nilable(String)) }
      attr_accessor :zip

      # The authenticated user's profile.
      sig do
        params(
          id: Integer,
          address_1: T.nilable(String),
          address_2: T.nilable(String),
          business_name: T.nilable(String),
          city: T.nilable(String),
          country: T.nilable(String),
          data_locality:
            T.nilable(Telnyx::UserProfileAPI::DataLocality::OrSymbol),
          data_locality_migration_status:
            T.nilable(
              Telnyx::UserProfileAPI::DataLocalityMigrationStatus::OrSymbol
            ),
          data_locality_updated_at: T.nilable(Time),
          first_name: T.nilable(String),
          last_name: T.nilable(String),
          phone_number: T.nilable(String),
          record_type: Telnyx::UserProfileAPI::RecordType::OrSymbol,
          state: T.nilable(String),
          updated_at: Time,
          user_id: String,
          zip: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the user profile, distinct from the user ID.
        id: nil,
        # First line of the profile address.
        address_1: nil,
        # Second line of the profile address.
        address_2: nil,
        # Business name associated with the profile.
        business_name: nil,
        # City in the profile address.
        city: nil,
        # Country code in the profile address.
        country: nil,
        # The user's data locality: USA (United States), DEU (Germany), AUS (Australia),
        # UAE (United Arab Emirates), or CAN (Canada).
        data_locality: nil,
        # Status of the user's data locality migration, or null when no migration status
        # is recorded.
        data_locality_migration_status: nil,
        # Timestamp when the user's data locality was last changed, or null if it has not
        # been changed.
        data_locality_updated_at: nil,
        # The user's first name.
        first_name: nil,
        # The user's last name.
        last_name: nil,
        # Contact phone number associated with the profile.
        phone_number: nil,
        # Identifies the type of resource.
        record_type: nil,
        # State or region in the profile address.
        state: nil,
        # Timestamp of the most recent profile update.
        updated_at: nil,
        # Identifier of the user who owns this profile.
        user_id: nil,
        # Postal code in the profile address.
        zip: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            address_1: T.nilable(String),
            address_2: T.nilable(String),
            business_name: T.nilable(String),
            city: T.nilable(String),
            country: T.nilable(String),
            data_locality:
              T.nilable(Telnyx::UserProfileAPI::DataLocality::TaggedSymbol),
            data_locality_migration_status:
              T.nilable(
                Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
              ),
            data_locality_updated_at: T.nilable(Time),
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            phone_number: T.nilable(String),
            record_type: Telnyx::UserProfileAPI::RecordType::TaggedSymbol,
            state: T.nilable(String),
            updated_at: Time,
            user_id: String,
            zip: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The user's data locality: USA (United States), DEU (Germany), AUS (Australia),
      # UAE (United Arab Emirates), or CAN (Canada).
      module DataLocality
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UserProfileAPI::DataLocality) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA = T.let(:USA, Telnyx::UserProfileAPI::DataLocality::TaggedSymbol)
        DEU = T.let(:DEU, Telnyx::UserProfileAPI::DataLocality::TaggedSymbol)
        AUS = T.let(:AUS, Telnyx::UserProfileAPI::DataLocality::TaggedSymbol)
        UAE = T.let(:UAE, Telnyx::UserProfileAPI::DataLocality::TaggedSymbol)
        CAN = T.let(:CAN, Telnyx::UserProfileAPI::DataLocality::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UserProfileAPI::DataLocality::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of the user's data locality migration, or null when no migration status
      # is recorded.
      module DataLocalityMigrationStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UserProfileAPI::DataLocalityMigrationStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NOT_STARTED =
          T.let(
            :not_started,
            Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
          )
        IN_PROGRESS =
          T.let(
            :in_progress,
            Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
          )
        FINISHED =
          T.let(
            :finished,
            Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UserProfileAPI::DataLocalityMigrationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Identifies the type of resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UserProfileAPI::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USER_PROFILE =
          T.let(:user_profile, Telnyx::UserProfileAPI::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UserProfileAPI::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
