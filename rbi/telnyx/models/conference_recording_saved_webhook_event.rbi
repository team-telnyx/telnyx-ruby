# typed: strong

module Telnyx
  module Models
    class ConferenceRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConferenceRecordingSavedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ConferenceRecordingSaved)) }
      attr_reader :data

      sig { params(data: Telnyx::ConferenceRecordingSaved::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::ConferenceRecordingSaved::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ConferenceRecordingSaved }) }
      def to_hash
      end
    end
  end
end
