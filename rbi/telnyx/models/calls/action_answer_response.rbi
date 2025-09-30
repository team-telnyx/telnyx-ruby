# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionAnswerResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Calls::ActionAnswerResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Models::Calls::ActionAnswerResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Calls::ActionAnswerResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Calls::ActionAnswerResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Calls::ActionAnswerResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Calls::ActionAnswerResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The ID of the recording. Only present when the record parameter is set to
          # record-from-answer.
          sig { returns(T.nilable(String)) }
          attr_reader :recording_id

          sig { params(recording_id: String).void }
          attr_writer :recording_id

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { params(result: String).void }
          attr_writer :result

          sig do
            params(recording_id: String, result: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The ID of the recording. Only present when the record parameter is set to
            # record-from-answer.
            recording_id: nil,
            result: nil
          )
          end

          sig { override.returns({ recording_id: String, result: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
