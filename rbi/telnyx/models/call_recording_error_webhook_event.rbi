# typed: strong

module Telnyx
  module Models
    class CallRecordingErrorWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallRecordingErrorWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallRecordingError)) }
      attr_reader :data

      sig { params(data: Telnyx::CallRecordingError::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallRecordingError::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallRecordingError }) }
      def to_hash
      end
    end
  end
end
