# typed: strong

module Telnyx
  module Models
    class MeetingSessionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::MeetingSession]) }
      attr_accessor :data

      sig do
        params(data: T::Array[Telnyx::MeetingSession::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Telnyx::MeetingSession] }) }
      def to_hash
      end
    end
  end
end
