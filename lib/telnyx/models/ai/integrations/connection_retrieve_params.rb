# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Integrations
        # @see Telnyx::Resources::AI::Integrations::Connections#retrieve
        class ConnectionRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
