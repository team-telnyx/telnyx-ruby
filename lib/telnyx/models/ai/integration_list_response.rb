# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Integrations#list
      class IntegrationListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::Integration>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Integration] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::Integration>]
      end
    end
  end
end
