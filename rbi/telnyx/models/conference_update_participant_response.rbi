# typed: strong

module Telnyx
  module Models
    class ConferenceUpdateParticipantResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConferenceUpdateParticipantResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceParticipant)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceParticipant::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceParticipant::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceParticipant }) }
      def to_hash
      end
    end
  end
end
