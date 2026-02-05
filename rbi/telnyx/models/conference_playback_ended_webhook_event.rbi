# typed: strong

module Telnyx
  module Models
    class ConferencePlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferencePlaybackEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferencePlaybackEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferencePlaybackEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferencePlaybackEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferencePlaybackEnded }) }
      def to_hash
      end
    end
  end
end
