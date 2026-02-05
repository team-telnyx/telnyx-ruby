# typed: strong

module Telnyx
  module Models
    class CallPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallPlaybackEndedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallPlaybackEnded)) }
      attr_reader :data

      sig { params(data: Telnyx::CallPlaybackEnded::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallPlaybackEnded::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallPlaybackEnded }) }
      def to_hash
      end
    end
  end
end
