# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Versions
          # Retrieves a specific version of an assistant by assistant_id and version_id
          sig do
            params(
              version_id: String,
              assistant_id: String,
              include_mcp_servers: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def retrieve(
            # Path param
            version_id,
            # Path param
            assistant_id:,
            # Query param
            include_mcp_servers: nil,
            request_options: {}
          )
          end

          # Updates the configuration of a specific assistant version. Can not update main
          # version
          sig do
            params(
              version_id: String,
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
              widget_settings:
                Telnyx::AI::Assistants::UpdateAssistant::WidgetSettings::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def update(
            # Path param
            version_id,
            # Path param
            assistant_id:,
            # Body param
            description: nil,
            # Body param: Map of dynamic variables and their default values
            dynamic_variables: nil,
            # Body param: If the dynamic_variables_webhook_url is set for the assistant, we
            # will send a request at the start of the conversation. See our
            # [guide](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            # for more information.
            dynamic_variables_webhook_url: nil,
            # Body param
            enabled_features: nil,
            # Body param: Text that the assistant will use to start the conversation. This may
            # be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables).
            # Use an empty string to have the assistant wait for the user to speak first. Use
            # the special value `<assistant-speaks-first-with-model-generated-message>` to
            # have the assistant generate the greeting based on the system instructions.
            greeting: nil,
            # Body param
            insight_settings: nil,
            # Body param: System instructions for the assistant. These may be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            instructions: nil,
            # Body param: This is only needed when using third-party inference providers. The
            # `identifier` for an integration secret
            # [/v2/integration_secrets](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
            # that refers to your LLM provider's API key. Warning: Free plans are unlikely to
            # work with this integration.
            llm_api_key_ref: nil,
            # Body param
            messaging_settings: nil,
            # Body param: ID of the model to use. You can use the
            # [Get models API](https://developers.telnyx.com/api-reference/chat/get-available-models)
            # to see all of your available models,
            model: nil,
            # Body param
            name: nil,
            # Body param
            privacy_settings: nil,
            # Body param
            telephony_settings: nil,
            # Body param: The tools that the assistant can use. These may be templated with
            # [dynamic variables](https://developers.telnyx.com/docs/inference/ai-assistants/dynamic-variables)
            tools: nil,
            # Body param
            transcription: nil,
            # Body param
            voice_settings: nil,
            # Body param: Configuration settings for the assistant's web widget.
            widget_settings: nil,
            request_options: {}
          )
          end

          # Retrieves all versions of a specific assistant with complete configuration and
          # metadata
          sig do
            params(
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::AssistantsList)
          end
          def list(assistant_id, request_options: {})
          end

          # Permanently removes a specific version of an assistant. Can not delete main
          # version
          sig do
            params(
              version_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(version_id, assistant_id:, request_options: {})
          end

          # Promotes a specific version to be the main/current version of the assistant.
          # This will delete any existing canary deploy configuration and send all live
          # production traffic to this version.
          sig do
            params(
              version_id: String,
              assistant_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::InferenceEmbedding)
          end
          def promote(version_id, assistant_id:, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
