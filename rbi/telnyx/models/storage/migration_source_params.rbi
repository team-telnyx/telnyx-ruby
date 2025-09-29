# typed: strong

module Telnyx
  module Models
    module Storage
      class MigrationSourceParams < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::MigrationSourceParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Bucket name to migrate the data from.
        sig { returns(String) }
        attr_accessor :bucket_name

        # Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
        # data from one Telnyx bucket to another.
        sig do
          returns(
            Telnyx::Storage::MigrationSourceParams::Provider::TaggedSymbol
          )
        end
        attr_accessor :provider

        sig { returns(Telnyx::Storage::MigrationSourceParams::ProviderAuth) }
        attr_reader :provider_auth

        sig do
          params(
            provider_auth:
              Telnyx::Storage::MigrationSourceParams::ProviderAuth::OrHash
          ).void
        end
        attr_writer :provider_auth

        # For intra-Telnyx buckets migration, specify the source bucket region in this
        # field.
        sig { returns(T.nilable(String)) }
        attr_reader :source_region

        sig { params(source_region: String).void }
        attr_writer :source_region

        # Unique identifier for the data migration source.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            bucket_name: String,
            provider:
              Telnyx::Storage::MigrationSourceParams::Provider::OrSymbol,
            provider_auth:
              Telnyx::Storage::MigrationSourceParams::ProviderAuth::OrHash,
            id: String,
            source_region: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Bucket name to migrate the data from.
          bucket_name:,
          # Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
          # data from one Telnyx bucket to another.
          provider:,
          provider_auth:,
          # Unique identifier for the data migration source.
          id: nil,
          # For intra-Telnyx buckets migration, specify the source bucket region in this
          # field.
          source_region: nil
        )
        end

        sig do
          override.returns(
            {
              bucket_name: String,
              provider:
                Telnyx::Storage::MigrationSourceParams::Provider::TaggedSymbol,
              provider_auth:
                Telnyx::Storage::MigrationSourceParams::ProviderAuth,
              id: String,
              source_region: String
            }
          )
        end
        def to_hash
        end

        # Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
        # data from one Telnyx bucket to another.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::MigrationSourceParams::Provider)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :aws,
              Telnyx::Storage::MigrationSourceParams::Provider::TaggedSymbol
            )
          TELNYX =
            T.let(
              :telnyx,
              Telnyx::Storage::MigrationSourceParams::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Storage::MigrationSourceParams::Provider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ProviderAuth < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::MigrationSourceParams::ProviderAuth,
                Telnyx::Internal::AnyHash
              )
            end

          # AWS Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key here.
          sig { returns(T.nilable(String)) }
          attr_reader :access_key

          sig { params(access_key: String).void }
          attr_writer :access_key

          # AWS Secret Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key
          # here as well.
          sig { returns(T.nilable(String)) }
          attr_reader :secret_access_key

          sig { params(secret_access_key: String).void }
          attr_writer :secret_access_key

          sig do
            params(access_key: String, secret_access_key: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # AWS Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key here.
            access_key: nil,
            # AWS Secret Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key
            # here as well.
            secret_access_key: nil
          )
          end

          sig do
            override.returns({ access_key: String, secret_access_key: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
