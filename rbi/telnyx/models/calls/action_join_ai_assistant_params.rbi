# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionJoinAIAssistantParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionJoinAIAssistantParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        # The ID of the AI assistant conversation to join.
        sig { returns(String) }
        attr_accessor :conversation_id

        sig { returns(Telnyx::Calls::ActionJoinAIAssistantParams::Participant) }
        attr_reader :participant

        sig do
          params(
            participant:
              Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OrHash
          ).void
        end
        attr_writer :participant

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        sig do
          params(
            call_control_id: String,
            conversation_id: String,
            participant:
              Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OrHash,
            client_state: String,
            command_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id:,
          # The ID of the AI assistant conversation to join.
          conversation_id:,
          participant:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              conversation_id: String,
              participant:
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant,
              client_state: String,
              command_id: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Participant < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant,
                Telnyx::Internal::AnyHash
              )
            end

          # The call_control_id of the participant to add to the conversation.
          sig { returns(String) }
          attr_accessor :id

          # The role of the participant in the conversation.
          sig do
            returns(
              Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role::OrSymbol
            )
          end
          attr_accessor :role

          # Display name for the participant.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Determines what happens to the conversation when this participant hangs up.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::OrSymbol
              )
            )
          end
          attr_reader :on_hangup

          sig do
            params(
              on_hangup:
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::OrSymbol
            ).void
          end
          attr_writer :on_hangup

          sig do
            params(
              id: String,
              role:
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role::OrSymbol,
              name: String,
              on_hangup:
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The call_control_id of the participant to add to the conversation.
            id:,
            # The role of the participant in the conversation.
            role:,
            # Display name for the participant.
            name: nil,
            # Determines what happens to the conversation when this participant hangs up.
            on_hangup: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                role:
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role::OrSymbol,
                name: String,
                on_hangup:
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The role of the participant in the conversation.
          module Role
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            USER =
              T.let(
                :user,
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Determines what happens to the conversation when this participant hangs up.
          module OnHangup
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTINUE_CONVERSATION =
              T.let(
                :continue_conversation,
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::TaggedSymbol
              )
            END_CONVERSATION =
              T.let(
                :end_conversation,
                Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::ActionJoinAIAssistantParams::Participant::OnHangup::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
