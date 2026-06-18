# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module OpenAI
        # @see Telnyx::Resources::AI::OpenAI::Chat#create_completion
        class ChatCreateCompletionParams < Telnyx::Models::AI::ChatCompletionRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
