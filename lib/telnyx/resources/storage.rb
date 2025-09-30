# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      # @return [Telnyx::Resources::Storage::Buckets]
      attr_reader :buckets

      # @return [Telnyx::Resources::Storage::MigrationSources]
      attr_reader :migration_sources

      # @return [Telnyx::Resources::Storage::Migrations]
      attr_reader :migrations

      # List Migration Source coverage
      #
      # @overload list_migration_source_coverage(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::StorageListMigrationSourceCoverageResponse]
      #
      # @see Telnyx::Models::StorageListMigrationSourceCoverageParams
      def list_migration_source_coverage(params = {})
        @client.request(
          method: :get,
          path: "storage/migration_source_coverage",
          model: Telnyx::Models::StorageListMigrationSourceCoverageResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @buckets = Telnyx::Resources::Storage::Buckets.new(client: client)
        @migration_sources = Telnyx::Resources::Storage::MigrationSources.new(client: client)
        @migrations = Telnyx::Resources::Storage::Migrations.new(client: client)
      end
    end
  end
end
