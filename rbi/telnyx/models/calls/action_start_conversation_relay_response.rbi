# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartConversationRelayResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Calls::ActionStartConversationRelayResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Calls::ActionStartConversationRelayResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the Conversation Relay session created by the command.
          sig { returns(T.nilable(String)) }
          attr_reader :conversation_relay_id

          sig { params(conversation_relay_id: String).void }
          attr_writer :conversation_relay_id

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { params(result: String).void }
          attr_writer :result

          sig do
            params(conversation_relay_id: String, result: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The ID of the Conversation Relay session created by the command.
            conversation_relay_id: nil,
            result: nil
          )
          end

          sig do
            override.returns({ conversation_relay_id: String, result: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
