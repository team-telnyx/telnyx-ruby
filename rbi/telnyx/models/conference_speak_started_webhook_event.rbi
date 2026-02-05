# typed: strong

module Telnyx
  module Models
    class ConferenceSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceSpeakStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceSpeakStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceSpeakStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceSpeakStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceSpeakStarted }) }
      def to_hash
      end
    end
  end
end
