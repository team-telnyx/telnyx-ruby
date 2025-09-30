# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#list
      class AssistantsList < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::AssistantsList::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::AssistantsList::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::AssistantsList::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute instructions
          #   System instructions for the assistant. These may be templated with
          #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          #
          #   @return [String]
          required :instructions, String

          # @!attribute model
          #   ID of the model to use. You can use the
          #   [Get models API](https://developers.telnyx.com/api/inference/inference-embedding/get-models-public-models-get)
          #   to see all of your available models,
          #
          #   @return [String]
          required :model, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute dynamic_variables
          #   Map of dynamic variables and their values
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :dynamic_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute dynamic_variables_webhook_url
          #   If the dynamic_variables_webhook_url is set for the assistant, we will send a
          #   request at the start of the conversation. See our
          #   [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          #   for more information.
          #
          #   @return [String, nil]
          optional :dynamic_variables_webhook_url, String

          # @!attribute enabled_features
          #
          #   @return [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>, nil]
          optional :enabled_features, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::AI::EnabledFeatures] }

          # @!attribute greeting
          #   Text that the assistant will use to start the conversation. This may be
          #   templated with
          #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          #
          #   @return [String, nil]
          optional :greeting, String

          # @!attribute import_metadata
          #
          #   @return [Telnyx::Models::AI::ImportMetadata, nil]
          optional :import_metadata, -> { Telnyx::AI::ImportMetadata }

          # @!attribute insight_settings
          #
          #   @return [Telnyx::Models::AI::InsightSettings, nil]
          optional :insight_settings, -> { Telnyx::AI::InsightSettings }

          # @!attribute llm_api_key_ref
          #   This is only needed when using third-party inference providers. The `identifier`
          #   for an integration secret
          #   [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          #   that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          #   work with this integration.
          #
          #   @return [String, nil]
          optional :llm_api_key_ref, String

          # @!attribute messaging_settings
          #
          #   @return [Telnyx::Models::AI::MessagingSettings, nil]
          optional :messaging_settings, -> { Telnyx::AI::MessagingSettings }

          # @!attribute privacy_settings
          #
          #   @return [Telnyx::Models::AI::PrivacySettings, nil]
          optional :privacy_settings, -> { Telnyx::AI::PrivacySettings }

          # @!attribute telephony_settings
          #
          #   @return [Telnyx::Models::AI::TelephonySettings, nil]
          optional :telephony_settings, -> { Telnyx::AI::TelephonySettings }

          # @!attribute tools
          #   The tools that the assistant can use. These may be templated with
          #   [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          #
          #   @return [Array<Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::HandoffTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::AssistantTool::SipReferTool, Telnyx::Models::AI::AssistantTool::DtmfTool>, nil]
          optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::AssistantTool] }

          # @!attribute transcription
          #
          #   @return [Telnyx::Models::AI::TranscriptionSettings, nil]
          optional :transcription, -> { Telnyx::AI::TranscriptionSettings }

          # @!attribute voice_settings
          #
          #   @return [Telnyx::Models::AI::VoiceSettings, nil]
          optional :voice_settings, -> { Telnyx::AI::VoiceSettings }

          # @!method initialize(id:, created_at:, instructions:, model:, name:, description: nil, dynamic_variables: nil, dynamic_variables_webhook_url: nil, enabled_features: nil, greeting: nil, import_metadata: nil, insight_settings: nil, llm_api_key_ref: nil, messaging_settings: nil, privacy_settings: nil, telephony_settings: nil, tools: nil, transcription: nil, voice_settings: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::AssistantsList::Data} for more details.
          #
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param instructions [String] System instructions for the assistant. These may be templated with [dynamic vari
          #
          #   @param model [String] ID of the model to use. You can use the [Get models API](https://developers.teln
          #
          #   @param name [String]
          #
          #   @param description [String]
          #
          #   @param dynamic_variables [Hash{Symbol=>Object}] Map of dynamic variables and their values
          #
          #   @param dynamic_variables_webhook_url [String] If the dynamic_variables_webhook_url is set for the assistant, we will send a re
          #
          #   @param enabled_features [Array<Symbol, Telnyx::Models::AI::EnabledFeatures>]
          #
          #   @param greeting [String] Text that the assistant will use to start the conversation. This may be template
          #
          #   @param import_metadata [Telnyx::Models::AI::ImportMetadata]
          #
          #   @param insight_settings [Telnyx::Models::AI::InsightSettings]
          #
          #   @param llm_api_key_ref [String] This is only needed when using third-party inference providers. The `identifier`
          #
          #   @param messaging_settings [Telnyx::Models::AI::MessagingSettings]
          #
          #   @param privacy_settings [Telnyx::Models::AI::PrivacySettings]
          #
          #   @param telephony_settings [Telnyx::Models::AI::TelephonySettings]
          #
          #   @param tools [Array<Telnyx::Models::AI::WebhookTool, Telnyx::Models::AI::RetrievalTool, Telnyx::Models::AI::AssistantTool::HandoffTool, Telnyx::Models::AI::HangupTool, Telnyx::Models::AI::TransferTool, Telnyx::Models::AI::AssistantTool::SipReferTool, Telnyx::Models::AI::AssistantTool::DtmfTool>] The tools that the assistant can use. These may be templated with [dynamic varia
          #
          #   @param transcription [Telnyx::Models::AI::TranscriptionSettings]
          #
          #   @param voice_settings [Telnyx::Models::AI::VoiceSettings]
        end
      end
    end
  end
end
