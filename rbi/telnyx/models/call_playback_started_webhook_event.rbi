# typed: strong

module Telnyx
  module Models
    class CallPlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallPlaybackStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallPlaybackStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallPlaybackStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallPlaybackStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallPlaybackStarted }) }
      def to_hash
      end
    end
  end
end
