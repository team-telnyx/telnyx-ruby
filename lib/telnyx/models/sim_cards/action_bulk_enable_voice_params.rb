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

        # @!attribute connection_id
        #   The identifier of the Mobile Voice Connection to associate with the SIM cards.
        #   The connection must be owned by the same user and of type
        #   <code>mobile_voice</code>. If omitted, voice is enabled without a connection
        #   association.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!method initialize(sim_card_group_id:, connection_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionBulkEnableVoiceParams} for more details.
        #
        #   @param sim_card_group_id [String]
        #
        #   @param connection_id [String] The identifier of the Mobile Voice Connection to associate with the SIM cards. T
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
