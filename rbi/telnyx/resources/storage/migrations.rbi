# typed: strong

module Telnyx
  module Resources
    class Storage
      class Migrations
        sig { returns(Telnyx::Resources::Storage::Migrations::Actions) }
        attr_reader :actions

        # Initiate a migration of data from an external provider into Telnyx Cloud
        # Storage. Currently, only S3 is supported.
        sig do
          params(
            source_id: String,
            target_bucket_name: String,
            target_region: String,
            refresh: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::MigrationCreateResponse)
        end
        def create(
          # ID of the Migration Source from which to migrate data.
          source_id:,
          # Bucket name to migrate the data into. Will default to the same name as the
          # `source_bucket_name`.
          target_bucket_name:,
          # Telnyx Cloud Storage region to migrate the data to.
          target_region:,
          # If true, will continue to poll the source bucket to ensure new data is
          # continually migrated over.
          refresh: nil,
          request_options: {}
        )
        end

        # Get a Migration
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::MigrationRetrieveResponse)
        end
        def retrieve(
          # Unique identifier for the data migration.
          id,
          request_options: {}
        )
        end

        # List all Migrations
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::Storage::MigrationListResponse
          )
        end
        def list(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
