# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Sqldbs#create
      class SqlDatabaseResponseWrapper < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Storage::SqlDatabase, nil]
        optional :data, -> { Telnyx::Storage::SqlDatabase }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Storage::SqlDatabase]
      end
    end
  end
end
