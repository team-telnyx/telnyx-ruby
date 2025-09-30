# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Migrations#list
      class MigrationListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Storage::MigrationParams>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Storage::MigrationParams] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Storage::Buckets::PaginationMetaSimple, nil]
        optional :meta, -> { Telnyx::Storage::Buckets::PaginationMetaSimple }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Storage::MigrationParams>]
        #   @param meta [Telnyx::Models::Storage::Buckets::PaginationMetaSimple]
      end
    end
  end
end
