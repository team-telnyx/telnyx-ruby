# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingAIResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Calls::ActionGatherUsingAIResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Calls::ActionGatherUsingAIResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the conversation created by the command.
          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { params(result: String).void }
          attr_writer :result

          sig do
            params(conversation_id: String, result: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The ID of the conversation created by the command.
            conversation_id: nil,
            result: nil
          )
          end

          sig { override.returns({ conversation_id: String, result: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
