# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Migrations#retrieve
      class MigrationRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Storage::MigrationParams, nil]
        optional :data, -> { Telnyx::Storage::MigrationParams }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Storage::MigrationParams]
      end
    end
  end
end
