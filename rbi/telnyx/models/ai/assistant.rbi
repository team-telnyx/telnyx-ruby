# typed: strong

module Telnyx
  module Models
    module AI
      class Assistant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::Assistant, Telnyx::Internal::AnyHash)
          end

        # The system instructions that the voice assistant uses during the gather command
        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        # The model to be used by the voice assistant.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # This is necessary only if the model selected is from OpenAI. You would pass the
        # `identifier` for an integration secret
        # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # that refers to your OpenAI API Key. Warning: Free plans are unlikely to work
        # with this integration.
        sig { returns(T.nilable(String)) }
        attr_reader :openai_api_key_ref

        sig { params(openai_api_key_ref: String).void }
        attr_writer :openai_api_key_ref

        # The tools that the voice assistant can use.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::BookAppointmentTool,
                  Telnyx::CheckAvailabilityTool,
                  Telnyx::AI::WebhookTool,
                  Telnyx::AI::HangupTool,
                  Telnyx::AI::TransferTool,
                  Telnyx::CallControlRetrievalTool
                )
              ]
            )
          )
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::BookAppointmentTool::OrHash,
                  Telnyx::CheckAvailabilityTool::OrHash,
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::CallControlRetrievalTool::OrHash
                )
              ]
          ).void
        end
        attr_writer :tools

        # Assistant configuration including choice of LLM, custom instructions, and tools.
        sig do
          params(
            instructions: String,
            model: String,
            openai_api_key_ref: String,
            tools:
              T::Array[
                T.any(
                  Telnyx::BookAppointmentTool::OrHash,
                  Telnyx::CheckAvailabilityTool::OrHash,
                  Telnyx::AI::WebhookTool::OrHash,
                  Telnyx::AI::HangupTool::OrHash,
                  Telnyx::AI::TransferTool::OrHash,
                  Telnyx::CallControlRetrievalTool::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # The system instructions that the voice assistant uses during the gather command
          instructions: nil,
          # The model to be used by the voice assistant.
          model: nil,
          # This is necessary only if the model selected is from OpenAI. You would pass the
          # `identifier` for an integration secret
          # [/v2/integration_secrets](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # that refers to your OpenAI API Key. Warning: Free plans are unlikely to work
          # with this integration.
          openai_api_key_ref: nil,
          # The tools that the voice assistant can use.
          tools: nil
        )
        end

        sig do
          override.returns(
            {
              instructions: String,
              model: String,
              openai_api_key_ref: String,
              tools:
                T::Array[
                  T.any(
                    Telnyx::BookAppointmentTool,
                    Telnyx::CheckAvailabilityTool,
                    Telnyx::AI::WebhookTool,
                    Telnyx::AI::HangupTool,
                    Telnyx::AI::TransferTool,
                    Telnyx::CallControlRetrievalTool
                  )
                ]
            }
          )
        end
        def to_hash
        end

        module Tool
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::BookAppointmentTool,
                Telnyx::CheckAvailabilityTool,
                Telnyx::AI::WebhookTool,
                Telnyx::AI::HangupTool,
                Telnyx::AI::TransferTool,
                Telnyx::CallControlRetrievalTool
              )
            end

          sig do
            override.returns(T::Array[Telnyx::AI::Assistant::Tool::Variants])
          end
          def self.variants
          end
        end
      end
    end
  end
end
