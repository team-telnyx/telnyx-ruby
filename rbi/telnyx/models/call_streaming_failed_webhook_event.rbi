# typed: strong

module Telnyx
  module Models
    class CallStreamingFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallStreamingFailedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallStreamingFailed)) }
      attr_reader :data

      sig { params(data: Telnyx::CallStreamingFailed::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallStreamingFailed::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallStreamingFailed }) }
      def to_hash
      end
    end
  end
end
