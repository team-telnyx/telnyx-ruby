# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ActionAcceptedResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::ActionAcceptedResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::MeetingSessions::ActionAcceptedResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::MeetingSessions::ActionAcceptedResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessions::ActionAcceptedResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :accepted

          sig { params(accepted: T::Boolean).returns(T.attached_class) }
          def self.new(accepted: true)
          end

          sig { override.returns({ accepted: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
