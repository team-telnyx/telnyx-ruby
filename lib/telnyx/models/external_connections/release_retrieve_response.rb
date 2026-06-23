# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Releases#retrieve
      class ReleaseRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::Release, nil]
        optional :data, -> { Telnyx::ExternalConnections::Release }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::Release]
      end
    end
  end
end
