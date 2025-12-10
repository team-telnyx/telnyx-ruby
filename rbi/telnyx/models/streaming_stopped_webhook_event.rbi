# typed: strong

module Telnyx
  module Models
    class StreamingStoppedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::StreamingStoppedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallStreamingStopped)) }
      attr_reader :data

      sig { params(data: Telnyx::CallStreamingStopped::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallStreamingStopped::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallStreamingStopped }) }
      def to_hash
      end
    end
  end
end
