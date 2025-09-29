# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::MigrationSources#retrieve
      class MigrationSourceRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Storage::MigrationSourceParams, nil]
        optional :data, -> { Telnyx::Storage::MigrationSourceParams }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Storage::MigrationSourceParams]
      end
    end
  end
end
