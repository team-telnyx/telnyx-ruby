# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::Teams#delete
      class TeamDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!method initialize(instance_id:, team_id:, request_options: {})
        #   @param instance_id [String]
        #   @param team_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
