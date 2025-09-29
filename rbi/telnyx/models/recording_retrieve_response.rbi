# typed: strong

module Telnyx
  module Models
    class RecordingRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RecordingRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::RecordingResponseData)) }
      attr_reader :data

      sig { params(data: Telnyx::RecordingResponseData::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::RecordingResponseData::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::RecordingResponseData }) }
      def to_hash
      end
    end
  end
end
