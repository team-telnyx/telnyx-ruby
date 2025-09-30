# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::MigrationSources#list
      class MigrationSourceListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Storage::MigrationSourceParams>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Storage::MigrationSourceParams] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Storage::Buckets::PaginationMetaSimple, nil]
        optional :meta, -> { Telnyx::Storage::Buckets::PaginationMetaSimple }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Storage::MigrationSourceParams>]
        #   @param meta [Telnyx::Models::Storage::Buckets::PaginationMetaSimple]
      end
    end
  end
end
