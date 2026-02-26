# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#list
        class ConnectionListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Integrations::IntegrationConnection>]
          required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Integrations::IntegrationConnection] }

          # @!method initialize(data:)
          #   @param data [Array<Telnyx::Models::AI::Integrations::IntegrationConnection>]
        end
      end
    end
  end
end
