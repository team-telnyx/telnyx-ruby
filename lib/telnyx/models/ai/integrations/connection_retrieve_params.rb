# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#retrieve
        class ConnectionRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute user_connection_id
          #
          #   @return [String]
          required :user_connection_id, String

          # @!method initialize(user_connection_id:, request_options: {})
          #   @param user_connection_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
