# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module FineTuning
        # @see Telnyx::Resources::AI::FineTuning::Jobs#cancel
        class JobCancelParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
