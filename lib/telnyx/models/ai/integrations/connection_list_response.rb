# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#list
        class ConnectionListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Integrations::ConnectionListResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Integrations::ConnectionListResponse::Data] }

          # @!method initialize(data:)
          #   @param data [Array<Telnyx::Models::AI::Integrations::ConnectionListResponse::Data>]

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
