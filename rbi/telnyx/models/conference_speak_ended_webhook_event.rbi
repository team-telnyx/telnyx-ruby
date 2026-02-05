# typed: strong

module Telnyx
  module Models
    class ConferenceSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceSpeakEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceSpeakEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceSpeakEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceSpeakEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceSpeakEnded }) }
      def to_hash
      end
    end
  end
end
