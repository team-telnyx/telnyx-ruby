# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      class MigrationSourceParams < Telnyx::Internal::Type::BaseModel
        # @!attribute bucket_name
        #   Bucket name to migrate the data from.
        #
        #   @return [String]
        required :bucket_name, String

        # @!attribute provider
        #   Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
        #   data from one Telnyx bucket to another.
        #
        #   @return [Symbol, Telnyx::Models::Storage::MigrationSourceParams::Provider]
        required :provider, enum: -> { Telnyx::Storage::MigrationSourceParams::Provider }

        # @!attribute provider_auth
        #
        #   @return [Telnyx::Models::Storage::MigrationSourceParams::ProviderAuth]
        required :provider_auth, -> { Telnyx::Storage::MigrationSourceParams::ProviderAuth }

        # @!attribute source_region
        #   For intra-Telnyx buckets migration, specify the source bucket region in this
        #   field.
        #
        #   @return [String, nil]
        optional :source_region, String

        response_only do
          # @!attribute id
          #   Unique identifier for the data migration source.
          #
          #   @return [String, nil]
          optional :id, String
        end

        # @!method initialize(bucket_name:, provider:, provider_auth:, id: nil, source_region: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::MigrationSourceParams} for more details.
        #
        #   @param bucket_name [String] Bucket name to migrate the data from.
        #
        #   @param provider [Symbol, Telnyx::Models::Storage::MigrationSourceParams::Provider] Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate d
        #
        #   @param provider_auth [Telnyx::Models::Storage::MigrationSourceParams::ProviderAuth]
        #
        #   @param id [String] Unique identifier for the data migration source.
        #
        #   @param source_region [String] For intra-Telnyx buckets migration, specify the source bucket region in this fie

        # Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
        # data from one Telnyx bucket to another.
        #
        # @see Telnyx::Models::Storage::MigrationSourceParams#provider
        module Provider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws
          TELNYX = :telnyx

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Storage::MigrationSourceParams#provider_auth
        class ProviderAuth < Telnyx::Internal::Type::BaseModel
          # @!attribute access_key
          #   AWS Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key here.
          #
          #   @return [String, nil]
          optional :access_key, String

          # @!attribute secret_access_key
          #   AWS Secret Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key
          #   here as well.
          #
          #   @return [String, nil]
          optional :secret_access_key, String

          # @!method initialize(access_key: nil, secret_access_key: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::MigrationSourceParams::ProviderAuth} for more details.
          #
          #   @param access_key [String] AWS Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key here.
          #
          #   @param secret_access_key [String] AWS Secret Access Key. For Telnyx-to-Telnyx migrations, use your Telnyx API key
        end
      end
    end
  end
end
