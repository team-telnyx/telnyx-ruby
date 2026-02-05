# typed: strong

module Telnyx
  module Models
    class CallSiprecFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallSiprecFailedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallSiprecFailed)) }
      attr_reader :data

      sig { params(data: Telnyx::CallSiprecFailed::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallSiprecFailed::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallSiprecFailed }) }
      def to_hash
      end
    end
  end
end
