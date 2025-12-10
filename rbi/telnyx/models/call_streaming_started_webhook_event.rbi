# typed: strong

module Telnyx
  module Models
    class CallStreamingStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallStreamingStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallStreamingStarted)) }
      attr_reader :data

      sig { params(data: Telnyx::CallStreamingStarted::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallStreamingStarted::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallStreamingStarted }) }
      def to_hash
      end
    end
  end
end
