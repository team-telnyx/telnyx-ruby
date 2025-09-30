# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#retrieve_capabilities
      class RcRetrieveCapabilitiesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute agent_id
        #
        #   @return [String]
        required :agent_id, String

        # @!method initialize(agent_id:, request_options: {})
        #   @param agent_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
