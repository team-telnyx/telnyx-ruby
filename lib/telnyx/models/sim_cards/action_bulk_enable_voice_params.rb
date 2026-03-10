# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#bulk_enable_voice
      class ActionBulkEnableVoiceParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute sim_card_group_id
        #
        #   @return [String]
        required :sim_card_group_id, String

        # @!method initialize(sim_card_group_id:, request_options: {})
        #   @param sim_card_group_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
