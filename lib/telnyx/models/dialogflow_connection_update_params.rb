# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DialogflowConnections#update
    class DialogflowConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute service_account
      #   The JSON map to connect your Dialoglow account.
      #
      #   @return [Hash{Symbol=>Object}]
      required :service_account, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute conversation_profile_id
      #   The id of a configured conversation profile on your Dialogflow account. (If you
      #   use Dialogflow CX, this param is required)
      #
      #   @return [String, nil]
      optional :conversation_profile_id, String

      # @!attribute dialogflow_api
      #   Determine which Dialogflow will be used.
      #
      #   @return [Symbol, Telnyx::Models::DialogflowConnectionUpdateParams::DialogflowAPI, nil]
      optional :dialogflow_api, enum: -> { Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI }

      # @!attribute environment
      #   Which Dialogflow environment will be used.
      #
      #   @return [String, nil]
      optional :environment, String

      # @!attribute location
      #   The region of your agent is. (If you use Dialogflow CX, this param is required)
      #
      #   @return [String, nil]
      optional :location, String

      # @!method initialize(service_account:, conversation_profile_id: nil, dialogflow_api: nil, environment: nil, location: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DialogflowConnectionUpdateParams} for more details.
      #
      #   @param service_account [Hash{Symbol=>Object}] The JSON map to connect your Dialoglow account.
      #
      #   @param conversation_profile_id [String] The id of a configured conversation profile on your Dialogflow account. (If you
      #
      #   @param dialogflow_api [Symbol, Telnyx::Models::DialogflowConnectionUpdateParams::DialogflowAPI] Determine which Dialogflow will be used.
      #
      #   @param environment [String] Which Dialogflow environment will be used.
      #
      #   @param location [String] The region of your agent is. (If you use Dialogflow CX, this param is required)
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Determine which Dialogflow will be used.
      module DialogflowAPI
        extend Telnyx::Internal::Type::Enum

        CX = :cx
        ES = :es

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
