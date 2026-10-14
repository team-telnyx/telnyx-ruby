# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantWhatsappParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::AssistantWhatsappParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :assistant_id

        # Instruction for the assistant, including the values for the template variables,
        # e.g. `Send the login verification code 482913 to the customer.`
        sig { returns(String) }
        attr_accessor :content

        # WhatsApp number on your account to send from, in E.164 format. Its messaging
        # profile must have this assistant configured.
        sig { returns(String) }
        attr_accessor :from

        # Customer to message, as an E.164 phone number or a WhatsApp business-scoped user
        # ID (BSUID).
        sig { returns(String) }
        attr_accessor :to

        # Metadata stored on the conversation. Keys starting with `telnyx_` and the
        # `assistant_id` key are reserved.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantWhatsappParams::ConversationMetadata::Variants
              ]
            )
          )
        end
        attr_reader :conversation_metadata

        sig do
          params(
            conversation_metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantWhatsappParams::ConversationMetadata::Variants
              ]
          ).void
        end
        attr_writer :conversation_metadata

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig do
          params(
            assistant_id: String,
            content: String,
            from: String,
            to: String,
            conversation_metadata:
              T::Hash[
                Symbol,
                Telnyx::AI::AssistantWhatsappParams::ConversationMetadata::Variants
              ],
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          assistant_id:,
          # Instruction for the assistant, including the values for the template variables,
          # e.g. `Send the login verification code 482913 to the customer.`
          content:,
          # WhatsApp number on your account to send from, in E.164 format. Its messaging
          # profile must have this assistant configured.
          from:,
          # Customer to message, as an E.164 phone number or a WhatsApp business-scoped user
          # ID (BSUID).
          to:,
          # Metadata stored on the conversation. Keys starting with `telnyx_` and the
          # `assistant_id` key are reserved.
          conversation_metadata: nil,
          idempotency_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant_id: String,
              content: String,
              from: String,
              to: String,
              conversation_metadata:
                T::Hash[
                  Symbol,
                  Telnyx::AI::AssistantWhatsappParams::ConversationMetadata::Variants
                ],
              idempotency_key: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module ConversationMetadata
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Integer, T::Boolean) }

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::AssistantWhatsappParams::ConversationMetadata::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
