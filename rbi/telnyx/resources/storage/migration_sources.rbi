# typed: strong

module Telnyx
  module Resources
    class Storage
      class MigrationSources
        # Create a source from which data can be migrated from.
        sig do
          params(
            bucket_name: String,
            provider:
              Telnyx::Storage::MigrationSourceParams::Provider::OrSymbol,
            provider_auth:
              Telnyx::Storage::MigrationSourceParams::ProviderAuth::OrHash,
            source_region: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::MigrationSourceCreateResponse)
        end
        def create(
          # Bucket name to migrate the data from.
          bucket_name:,
          # Cloud provider from which to migrate data. Use 'telnyx' if you want to migrate
          # data from one Telnyx bucket to another.
          provider:,
          provider_auth:,
          # For intra-Telnyx buckets migration, specify the source bucket region in this
          # field.
          source_region: nil,
          request_options: {}
        )
        end

        # Get a Migration Source
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::MigrationSourceRetrieveResponse)
        end
        def retrieve(
          # Unique identifier for the data migration source.
          id,
          request_options: {}
        )
        end

        # List all Migration Sources
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::Storage::MigrationSourceListResponse
          )
        end
        def list(request_options: {})
        end

        # Delete a Migration Source
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::MigrationSourceDeleteResponse)
        end
        def delete(
          # Unique identifier for the data migration source.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
