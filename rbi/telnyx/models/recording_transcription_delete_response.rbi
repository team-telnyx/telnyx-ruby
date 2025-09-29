# typed: strong

module Telnyx
  module Models
    class RecordingTranscriptionDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RecordingTranscriptionDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::RecordingTranscription)) }
      attr_reader :data

      sig { params(data: Telnyx::RecordingTranscription::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::RecordingTranscription::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::RecordingTranscription }) }
      def to_hash
      end
    end
  end
end
