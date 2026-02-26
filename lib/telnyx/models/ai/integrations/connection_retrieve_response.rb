# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#retrieve
        class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Integrations::IntegrationConnection]
          required :data, -> { Telnyx::AI::Integrations::IntegrationConnection }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Integrations::IntegrationConnection]
        end
      end
    end
  end
end
