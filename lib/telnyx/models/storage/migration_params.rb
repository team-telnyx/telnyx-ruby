# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      class MigrationParams < Telnyx::Internal::Type::BaseModel
        # @!attribute source_id
        #   ID of the Migration Source from which to migrate data.
        #
        #   @return [String]
        required :source_id, String

        # @!attribute target_bucket_name
        #   Bucket name to migrate the data into. Will default to the same name as the
        #   `source_bucket_name`.
        #
        #   @return [String]
        required :target_bucket_name, String

        # @!attribute target_region
        #   Telnyx Cloud Storage region to migrate the data to.
        #
        #   @return [String]
        required :target_region, String

        # @!attribute refresh
        #   If true, will continue to poll the source bucket to ensure new data is
        #   continually migrated over.
        #
        #   @return [Boolean, nil]
        optional :refresh, Telnyx::Internal::Type::Boolean

        response_only do
          # @!attribute id
          #   Unique identifier for the data migration.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute bytes_migrated
          #   Total amount of data that has been succesfully migrated.
          #
          #   @return [Integer, nil]
          optional :bytes_migrated, Integer

          # @!attribute bytes_to_migrate
          #   Total amount of data found in source bucket to migrate.
          #
          #   @return [Integer, nil]
          optional :bytes_to_migrate, Integer

          # @!attribute created_at
          #   Time when data migration was created
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute eta
          #   Estimated time the migration will complete.
          #
          #   @return [Time, nil]
          optional :eta, Time

          # @!attribute last_copy
          #   Time when data migration was last copied from the source.
          #
          #   @return [Time, nil]
          optional :last_copy, Time

          # @!attribute speed
          #   Current speed of the migration.
          #
          #   @return [Integer, nil]
          optional :speed, Integer

          # @!attribute status
          #   Status of the migration.
          #
          #   @return [Symbol, Telnyx::Models::Storage::MigrationParams::Status, nil]
          optional :status, enum: -> { Telnyx::Storage::MigrationParams::Status }
        end

        # @!method initialize(source_id:, target_bucket_name:, target_region:, id: nil, bytes_migrated: nil, bytes_to_migrate: nil, created_at: nil, eta: nil, last_copy: nil, refresh: nil, speed: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::MigrationParams} for more details.
        #
        #   @param source_id [String] ID of the Migration Source from which to migrate data.
        #
        #   @param target_bucket_name [String] Bucket name to migrate the data into. Will default to the same name as the `sour
        #
        #   @param target_region [String] Telnyx Cloud Storage region to migrate the data to.
        #
        #   @param id [String] Unique identifier for the data migration.
        #
        #   @param bytes_migrated [Integer] Total amount of data that has been succesfully migrated.
        #
        #   @param bytes_to_migrate [Integer] Total amount of data found in source bucket to migrate.
        #
        #   @param created_at [Time] Time when data migration was created
        #
        #   @param eta [Time] Estimated time the migration will complete.
        #
        #   @param last_copy [Time] Time when data migration was last copied from the source.
        #
        #   @param refresh [Boolean] If true, will continue to poll the source bucket to ensure new data is continual
        #
        #   @param speed [Integer] Current speed of the migration.
        #
        #   @param status [Symbol, Telnyx::Models::Storage::MigrationParams::Status] Status of the migration.

        # Status of the migration.
        #
        # @see Telnyx::Models::Storage::MigrationParams#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          CHECKING = :checking
          MIGRATING = :migrating
          COMPLETE = :complete
          ERROR = :error
          STOPPED = :stopped

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
