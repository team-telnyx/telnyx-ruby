# typed: strong

module Telnyx
  module Models
    module Calls
      class AIAssistantJoinParticipant < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::AIAssistantJoinParticipant,
              Telnyx::Internal::AnyHash
            )
          end

        # The call_control_id of the participant to add to the conversation.
        sig { returns(String) }
        attr_accessor :id

        # The role of the participant in the conversation.
        sig do
          returns(Telnyx::Calls::AIAssistantJoinParticipant::Role::OrSymbol)
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
              Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::OrSymbol
            )
          )
        end
        attr_reader :on_hangup

        sig do
          params(
            on_hangup:
              Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::OrSymbol
          ).void
        end
        attr_writer :on_hangup

        sig do
          params(
            id: String,
            role: Telnyx::Calls::AIAssistantJoinParticipant::Role::OrSymbol,
            name: String,
            on_hangup:
              Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::OrSymbol
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
              role: Telnyx::Calls::AIAssistantJoinParticipant::Role::OrSymbol,
              name: String,
              on_hangup:
                Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::OrSymbol
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
              T.all(Symbol, Telnyx::Calls::AIAssistantJoinParticipant::Role)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USER =
            T.let(
              :user,
              Telnyx::Calls::AIAssistantJoinParticipant::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::AIAssistantJoinParticipant::Role::TaggedSymbol
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
              T.all(Symbol, Telnyx::Calls::AIAssistantJoinParticipant::OnHangup)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONTINUE_CONVERSATION =
            T.let(
              :continue_conversation,
              Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::TaggedSymbol
            )
          END_CONVERSATION =
            T.let(
              :end_conversation,
              Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::AIAssistantJoinParticipant::OnHangup::TaggedSymbol
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
