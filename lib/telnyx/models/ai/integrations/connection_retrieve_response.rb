# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#retrieve
        class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data]
          required :data, -> { Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse::Data]

          # @see Telnyx::Models::AI::Integrations::ConnectionRetrieveResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute allowed_tools
            #
            #   @return [Array<String>]
            required :allowed_tools, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute integration_id
            #
            #   @return [String]
            required :integration_id, String

            # @!method initialize(id:, allowed_tools:, integration_id:)
            #   @param id [String]
            #   @param allowed_tools [Array<String>]
            #   @param integration_id [String]
          end
        end
      end
    end
  end
end
