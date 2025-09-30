# typed: strong

module Telnyx
  module Models
    class RoomParticipantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RoomParticipantRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::RoomParticipant)) }
      attr_reader :data

      sig { params(data: Telnyx::RoomParticipant::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::RoomParticipant::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::RoomParticipant }) }
      def to_hash
      end
    end
  end
end
