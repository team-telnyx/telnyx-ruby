# typed: strong

module Telnyx
  module Models
    class ConferencePlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferencePlaybackStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferencePlaybackStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferencePlaybackStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferencePlaybackStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferencePlaybackStarted }) }
      def to_hash
      end
    end
  end
end
