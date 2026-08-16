# typed: strong

module Telnyx
  module Models
    class MeetingSessionRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionRetrieveEventsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionRetrieveEventsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :payload

        sig { returns(Integer) }
        attr_accessor :seq

        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            occurred_at: Time,
            payload: T::Hash[Symbol, T.anything],
            seq: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(occurred_at:, payload:, seq:, type:)
        end

        sig do
          override.returns(
            {
              occurred_at: Time,
              payload: T::Hash[Symbol, T.anything],
              seq: Integer,
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
