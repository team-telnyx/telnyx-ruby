# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#enable_voice
      class ActionEnableVoiceParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute connection_id
        #   The identifier of the Mobile Voice Connection to associate with this SIM card.
        #   The connection must be owned by the same user and of type
        #   <code>mobile_voice</code>. If omitted, voice is enabled without a connection
        #   association.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!method initialize(id:, connection_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionEnableVoiceParams} for more details.
        #
        #   @param id [String]
        #
        #   @param connection_id [String] The identifier of the Mobile Voice Connection to associate with this SIM card. T
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
