# typed: strong

module Telnyx
  module Models
    module Storage
      class MigrationParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::MigrationParams, Telnyx::Internal::AnyHash)
          end

        # ID of the Migration Source from which to migrate data.
        sig { returns(String) }
        attr_accessor :source_id

        # Bucket name to migrate the data into. Will default to the same name as the
        # `source_bucket_name`.
        sig { returns(String) }
        attr_accessor :target_bucket_name

        # Telnyx Cloud Storage region to migrate the data to.
        sig { returns(String) }
        attr_accessor :target_region

        # If true, will continue to poll the source bucket to ensure new data is
        # continually migrated over.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :refresh

        sig { params(refresh: T::Boolean).void }
        attr_writer :refresh

        # Unique identifier for the data migration.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Total amount of data that has been succesfully migrated.
        sig { returns(T.nilable(Integer)) }
        attr_reader :bytes_migrated

        sig { params(bytes_migrated: Integer).void }
        attr_writer :bytes_migrated

        # Total amount of data found in source bucket to migrate.
        sig { returns(T.nilable(Integer)) }
        attr_reader :bytes_to_migrate

        sig { params(bytes_to_migrate: Integer).void }
        attr_writer :bytes_to_migrate

        # Time when data migration was created
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Estimated time the migration will complete.
        sig { returns(T.nilable(Time)) }
        attr_reader :eta

        sig { params(eta: Time).void }
        attr_writer :eta

        # Time when data migration was last copied from the source.
        sig { returns(T.nilable(Time)) }
        attr_reader :last_copy

        sig { params(last_copy: Time).void }
        attr_writer :last_copy

        # Current speed of the migration.
        sig { returns(T.nilable(Integer)) }
        attr_reader :speed

        sig { params(speed: Integer).void }
        attr_writer :speed

        # Status of the migration.
        sig do
          returns(
            T.nilable(Telnyx::Storage::MigrationParams::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::Storage::MigrationParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            source_id: String,
            target_bucket_name: String,
            target_region: String,
            id: String,
            bytes_migrated: Integer,
            bytes_to_migrate: Integer,
            created_at: Time,
            eta: Time,
            last_copy: Time,
            refresh: T::Boolean,
            speed: Integer,
            status: Telnyx::Storage::MigrationParams::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the Migration Source from which to migrate data.
          source_id:,
          # Bucket name to migrate the data into. Will default to the same name as the
          # `source_bucket_name`.
          target_bucket_name:,
          # Telnyx Cloud Storage region to migrate the data to.
          target_region:,
          # Unique identifier for the data migration.
          id: nil,
          # Total amount of data that has been succesfully migrated.
          bytes_migrated: nil,
          # Total amount of data found in source bucket to migrate.
          bytes_to_migrate: nil,
          # Time when data migration was created
          created_at: nil,
          # Estimated time the migration will complete.
          eta: nil,
          # Time when data migration was last copied from the source.
          last_copy: nil,
          # If true, will continue to poll the source bucket to ensure new data is
          # continually migrated over.
          refresh: nil,
          # Current speed of the migration.
          speed: nil,
          # Status of the migration.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              source_id: String,
              target_bucket_name: String,
              target_region: String,
              id: String,
              bytes_migrated: Integer,
              bytes_to_migrate: Integer,
              created_at: Time,
              eta: Time,
              last_copy: Time,
              refresh: T::Boolean,
              speed: Integer,
              status: Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Status of the migration.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::MigrationParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )
          CHECKING =
            T.let(
              :checking,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )
          MIGRATING =
            T.let(
              :migrating,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :complete,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )
          STOPPED =
            T.let(
              :stopped,
              Telnyx::Storage::MigrationParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Storage::MigrationParams::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
