# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Storage#list_migration_source_coverage
    class StorageListMigrationSourceCoverageResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Storage::Buckets::PaginationMetaSimple, nil]
      optional :meta, -> { Telnyx::Storage::Buckets::PaginationMetaSimple }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data>]
      #   @param meta [Telnyx::Models::Storage::Buckets::PaginationMetaSimple]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute provider
        #   Cloud provider from which to migrate data.
        #
        #   @return [Symbol, Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider, nil]
        optional :provider,
                 enum: -> { Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider }

        # @!attribute source_region
        #   Provider region from which to migrate data.
        #
        #   @return [String, nil]
        optional :source_region, String

        # @!method initialize(provider: nil, source_region: nil)
        #   @param provider [Symbol, Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider] Cloud provider from which to migrate data.
        #
        #   @param source_region [String] Provider region from which to migrate data.

        # Cloud provider from which to migrate data.
        #
        # @see Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data#provider
        module Provider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
