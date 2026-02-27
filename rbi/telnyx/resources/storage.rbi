# typed: strong

module Telnyx
  module Resources
    # Migrate data from an external provider into Telnyx Cloud Storage
    class Storage
      # Presigned object URL operations
      sig { returns(Telnyx::Resources::Storage::Buckets) }
      attr_reader :buckets

      # Migrate data from an external provider into Telnyx Cloud Storage
      sig { returns(Telnyx::Resources::Storage::MigrationSources) }
      attr_reader :migration_sources

      # Migrate data from an external provider into Telnyx Cloud Storage
      sig { returns(Telnyx::Resources::Storage::Migrations) }
      attr_reader :migrations

      # List Migration Source coverage
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::StorageListMigrationSourceCoverageResponse
        )
      end
      def list_migration_source_coverage(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
