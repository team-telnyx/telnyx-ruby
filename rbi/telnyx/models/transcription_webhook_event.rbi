# typed: strong

module Telnyx
  module Models
    class TranscriptionWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TranscriptionWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Transcription)) }
      attr_reader :data

      sig { params(data: Telnyx::Transcription::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::Transcription::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Transcription }) }
      def to_hash
      end
    end
  end
end
