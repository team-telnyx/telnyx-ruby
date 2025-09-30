# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#retrieve
      class UploadRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::Upload, nil]
        optional :data, -> { Telnyx::ExternalConnections::Upload }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::Upload]
      end
    end
  end
end
