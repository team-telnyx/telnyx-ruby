# frozen_string_literal: true

module Telnyx
  module Models
    class UserProfileAPI < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifier of the user profile, distinct from the user ID.
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute address_1
      #   First line of the profile address.
      #
      #   @return [String, nil]
      optional :address_1, String, nil?: true

      # @!attribute address_2
      #   Second line of the profile address.
      #
      #   @return [String, nil]
      optional :address_2, String, nil?: true

      # @!attribute business_name
      #   Business name associated with the profile.
      #
      #   @return [String, nil]
      optional :business_name, String, nil?: true

      # @!attribute city
      #   City in the profile address.
      #
      #   @return [String, nil]
      optional :city, String, nil?: true

      # @!attribute country
      #   Country code in the profile address.
      #
      #   @return [String, nil]
      optional :country, String, nil?: true

      # @!attribute data_locality
      #   The user's data locality: USA (United States), DEU (Germany), AUS (Australia),
      #   UAE (United Arab Emirates), or CAN (Canada).
      #
      #   @return [Symbol, Telnyx::Models::UserProfileAPI::DataLocality, nil]
      optional :data_locality, enum: -> { Telnyx::UserProfileAPI::DataLocality }, nil?: true

      # @!attribute data_locality_migration_status
      #   Status of the user's data locality migration, or null when no migration status
      #   is recorded.
      #
      #   @return [Symbol, Telnyx::Models::UserProfileAPI::DataLocalityMigrationStatus, nil]
      optional :data_locality_migration_status,
               enum: -> { Telnyx::UserProfileAPI::DataLocalityMigrationStatus },
               nil?: true

      # @!attribute data_locality_updated_at
      #   Timestamp when the user's data locality was last changed, or null if it has not
      #   been changed.
      #
      #   @return [Time, nil]
      optional :data_locality_updated_at, Time, nil?: true

      # @!attribute first_name
      #   The user's first name.
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute last_name
      #   The user's last name.
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute phone_number
      #   Contact phone number associated with the profile.
      #
      #   @return [String, nil]
      optional :phone_number, String, nil?: true

      # @!attribute record_type
      #   Identifies the type of resource.
      #
      #   @return [Symbol, Telnyx::Models::UserProfileAPI::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::UserProfileAPI::RecordType }

      # @!attribute state
      #   State or region in the profile address.
      #
      #   @return [String, nil]
      optional :state, String, nil?: true

      # @!attribute updated_at
      #   Timestamp of the most recent profile update.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute user_id
      #   Identifier of the user who owns this profile.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute zip
      #   Postal code in the profile address.
      #
      #   @return [String, nil]
      optional :zip, String, nil?: true

      # @!method initialize(id: nil, address_1: nil, address_2: nil, business_name: nil, city: nil, country: nil, data_locality: nil, data_locality_migration_status: nil, data_locality_updated_at: nil, first_name: nil, last_name: nil, phone_number: nil, record_type: nil, state: nil, updated_at: nil, user_id: nil, zip: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserProfileAPI} for more details.
      #
      #   The authenticated user's profile.
      #
      #   @param id [Integer] Identifier of the user profile, distinct from the user ID.
      #
      #   @param address_1 [String, nil] First line of the profile address.
      #
      #   @param address_2 [String, nil] Second line of the profile address.
      #
      #   @param business_name [String, nil] Business name associated with the profile.
      #
      #   @param city [String, nil] City in the profile address.
      #
      #   @param country [String, nil] Country code in the profile address.
      #
      #   @param data_locality [Symbol, Telnyx::Models::UserProfileAPI::DataLocality, nil] The user's data locality: USA (United States), DEU (Germany), AUS (Australia), U
      #
      #   @param data_locality_migration_status [Symbol, Telnyx::Models::UserProfileAPI::DataLocalityMigrationStatus, nil] Status of the user's data locality migration, or null when no migration status i
      #
      #   @param data_locality_updated_at [Time, nil] Timestamp when the user's data locality was last changed, or null if it has not
      #
      #   @param first_name [String, nil] The user's first name.
      #
      #   @param last_name [String, nil] The user's last name.
      #
      #   @param phone_number [String, nil] Contact phone number associated with the profile.
      #
      #   @param record_type [Symbol, Telnyx::Models::UserProfileAPI::RecordType] Identifies the type of resource.
      #
      #   @param state [String, nil] State or region in the profile address.
      #
      #   @param updated_at [Time] Timestamp of the most recent profile update.
      #
      #   @param user_id [String] Identifier of the user who owns this profile.
      #
      #   @param zip [String, nil] Postal code in the profile address.

      # The user's data locality: USA (United States), DEU (Germany), AUS (Australia),
      # UAE (United Arab Emirates), or CAN (Canada).
      #
      # @see Telnyx::Models::UserProfileAPI#data_locality
      module DataLocality
        extend Telnyx::Internal::Type::Enum

        USA = :USA
        DEU = :DEU
        AUS = :AUS
        UAE = :UAE
        CAN = :CAN

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the user's data locality migration, or null when no migration status
      # is recorded.
      #
      # @see Telnyx::Models::UserProfileAPI#data_locality_migration_status
      module DataLocalityMigrationStatus
        extend Telnyx::Internal::Type::Enum

        NOT_STARTED = :not_started
        IN_PROGRESS = :in_progress
        FINISHED = :finished

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Identifies the type of resource.
      #
      # @see Telnyx::Models::UserProfileAPI#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        USER_PROFILE = :user_profile

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
