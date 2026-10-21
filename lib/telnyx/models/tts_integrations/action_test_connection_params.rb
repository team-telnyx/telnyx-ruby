# frozen_string_literal: true

module Telnyx
  module Models
    module TtsIntegrations
      # @see Telnyx::Resources::TtsIntegrations::Actions#test_connection
      class ActionTestConnectionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute api_key_ref
        #   The identifier of the Integration Secret in your organization that Telnyx
        #   connects to the engine with, as a caller would.
        #
        #   @return [String]
        required :api_key_ref, String

        # @!attribute voice_id
        #   The voice to test. Default: the first voice in the engine's list. It must be in
        #   the list.
        #
        #   @return [String, nil]
        optional :voice_id, String

        # @!method initialize(id:, api_key_ref:, voice_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TtsIntegrations::ActionTestConnectionParams} for more details.
        #
        #   @param id [String]
        #
        #   @param api_key_ref [String] The identifier of the Integration Secret in your organization that Telnyx connec
        #
        #   @param voice_id [String] The voice to test. Default: the first voice in the engine's list. It must be in
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
