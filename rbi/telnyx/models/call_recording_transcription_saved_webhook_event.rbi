# typed: strong

module Telnyx
  module Models
    class CallRecordingTranscriptionSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallRecordingTranscriptionSavedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallRecordingTranscriptionSaved)) }
      attr_reader :data

      sig { params(data: Telnyx::CallRecordingTranscriptionSaved::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallRecordingTranscriptionSaved::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::CallRecordingTranscriptionSaved })
      end
      def to_hash
      end
    end
  end
end
