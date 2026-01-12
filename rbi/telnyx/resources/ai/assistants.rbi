# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        sig { returns(Telnyx::Resources::AI::Assistants::Tests) }
        attr_reader :tests

        sig { returns(Telnyx::Resources::AI::Assistants::CanaryDeploys) }
        attr_reader :canary_deploys

        sig { returns(Telnyx::Resources::AI::Assistants::ScheduledEvents) }
        attr_reader :scheduled_events

        sig { returns(Telnyx::Resources::AI::Assistants::Tools) }
        attr_reader :tools

        sig { returns(Telnyx::Resources::AI::Assistants::Versions) }
        attr_reader :versions

        # Create a new AI Assistant.
        sig do
          params(
            instructions: String,
            model: String,
            name: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            llm_api_key_ref: String,
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash
                )
              ],
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def create(
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions:,
          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api/inference/inference-embedding/get-models-public-models-get)
          # to see all of your available models,
          model:,
          name:,
          description: nil,
          # Map of dynamic variables and their default values
          dynamic_variables: nil,
          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
          dynamic_variables_webhook_url: nil,
          enabled_features: nil,
          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          greeting: nil,
          insight_settings: nil,
          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          llm_api_key_ref: nil,
          messaging_settings: nil,
          privacy_settings: nil,
          telephony_settings: nil,
          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          tools: nil,
          transcription: nil,
          voice_settings: nil,
          request_options: {}
        )
        end

        # Retrieve an AI Assistant configuration by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            call_control_id: String,
            fetch_dynamic_variables_from_webhook: T::Boolean,
            from: String,
            to: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def retrieve(
          assistant_id,
          call_control_id: nil,
          fetch_dynamic_variables_from_webhook: nil,
          from: nil,
          to: nil,
          request_options: {}
        )
        end

        # Update an AI Assistant's attributes.
        sig do
          params(
            assistant_id: String,
            description: String,
            dynamic_variables: T::Hash[Symbol, T.anything],
            dynamic_variables_webhook_url: String,
            enabled_features: T::Array[Telnyx::AI::EnabledFeatures::OrSymbol],
            greeting: String,
            insight_settings: Telnyx::AI::InsightSettings::OrHash,
            instructions: String,
            llm_api_key_ref: String,
            messaging_settings: Telnyx::AI::MessagingSettings::OrHash,
            model: String,
            name: String,
            privacy_settings: Telnyx::AI::PrivacySettings::OrHash,
            promote_to_main: T::Boolean,
            telephony_settings: Telnyx::AI::TelephonySettings::OrHash,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::RetrievalTool::OrHash,
                  Telnyx::AI::AssistantTool::Handoff::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::AI::AssistantTool::Refer::OrHash,
                  Telnyx::AI::AssistantTool::SendDtmf::OrHash,
                  Telnyx::AI::AssistantTool::SendMessage::OrHash
                )
              ],
            transcription: Telnyx::AI::TranscriptionSettings::OrHash,
            voice_settings: Telnyx::AI::VoiceSettings::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def update(
          assistant_id,
          description: nil,
          # Map of dynamic variables and their default values
          dynamic_variables: nil,
          # If the dynamic_variables_webhook_url is set for the assistant, we will send a
          # request at the start of the conversation. See our
          # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          # for more information.
          dynamic_variables_webhook_url: nil,
          enabled_features: nil,
          # Text that the assistant will use to start the conversation. This may be
          # templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          greeting: nil,
          insight_settings: nil,
          # System instructions for the assistant. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          instructions: nil,
          # This is only needed when using third-party inference providers. The `identifier`
          # for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
          # work with this integration.
          llm_api_key_ref: nil,
          messaging_settings: nil,
          # ID of the model to use. You can use the
          # [Get models API](https://developers.telnyx.com/api/inference/inference-embedding/get-models-public-models-get)
          # to see all of your available models,
          model: nil,
          name: nil,
          privacy_settings: nil,
          # Indicates whether the assistant should be promoted to the main version. Defaults
          # to true.
          promote_to_main: nil,
          telephony_settings: nil,
          # The tools that the assistant can use. These may be templated with
          # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
          tools: nil,
          transcription: nil,
          voice_settings: nil,
          request_options: {}
        )
        end

        # Retrieve a list of all AI Assistants configured by the user.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::AI::AssistantsList
          )
        end
        def list(request_options: {})
        end

        # Delete an AI Assistant by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantDeleteResponse)
        end
        def delete(assistant_id, request_options: {})
        end

        # This endpoint allows a client to send a chat message to a specific AI Assistant.
        # The assistant processes the message and returns a relevant reply based on the
        # current conversation context. Refer to the Conversation API to
        # [create a conversation](https://developers.telnyx.com/api/inference/inference-embedding/create-new-conversation-public-conversations-post),
        # [filter existing conversations](https://developers.telnyx.com/api/inference/inference-embedding/get-conversations-public-conversations-get),
        # [fetch messages for a conversation](https://developers.telnyx.com/api/inference/inference-embedding/get-conversations-public-conversation-id-messages-get),
        # and
        # [manually add messages to a conversation](https://developers.telnyx.com/api/inference/inference-embedding/add-new-message).
        sig do
          params(
            assistant_id: String,
            content: String,
            conversation_id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantChatResponse)
        end
        def chat(
          assistant_id,
          # The message content sent by the client to the assistant
          content:,
          # A unique identifier for the conversation thread, used to maintain context
          conversation_id:,
          # The optional display name of the user sending the message
          name: nil,
          request_options: {}
        )
        end

        # Clone an existing assistant, excluding telephony and messaging settings.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::InferenceEmbedding)
        end
        def clone_(assistant_id, request_options: {})
        end

        # Get an assistant texml by `assistant_id`.
        sig do
          params(
            assistant_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(String)
        end
        def get_texml(assistant_id, request_options: {})
        end

        # Import assistants from external providers. Any assistant that has already been
        # imported will be overwritten with its latest version from the importing
        # provider.
        sig do
          params(
            api_key_ref: String,
            provider: Telnyx::AI::AssistantImportsParams::Provider::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::AI::AssistantsList)
        end
        def imports(
          # Integration secret pointer that refers to the API key for the external provider.
          # This should be an identifier for an integration secret created via
          # /v2/integration_secrets.
          api_key_ref:,
          # The external provider to import assistants from.
          provider:,
          request_options: {}
        )
        end

        # Send an SMS message for an assistant. This endpoint:
        #
        # 1. Validates the assistant exists and has messaging profile configured
        # 2. If should_create_conversation is true, creates a new conversation with
        #    metadata
        # 3. Sends the SMS message (If `text` is set, this will be sent. Otherwise, if
        #    this is the first message in the conversation and the assistant has a
        #    `greeting` configured, this will be sent. Otherwise the assistant will
        #    generate the text to send.)
        # 4. Updates conversation metadata if provided
        # 5. Returns the conversation ID
        sig do
          params(
            assistant_id: String,
            from: String,
            to: String,
            conversation_metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantSendSMSParams::ConversationMetadata::Variants
              ],
            should_create_conversation: T::Boolean,
            text: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::AI::AssistantSendSMSResponse)
        end
        def send_sms(
          assistant_id,
          from:,
          to:,
          conversation_metadata: nil,
          should_create_conversation: nil,
          text: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
