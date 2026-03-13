# typed: strong

module Telnyx
  module Models
    class VoiceCloneUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceCloneUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A voice clone object.
      sig { returns(T.nilable(Telnyx::VoiceCloneData)) }
      attr_reader :data

      sig { params(data: Telnyx::VoiceCloneData::OrHash).void }
      attr_writer :data

      # Response envelope for a single voice clone.
      sig do
        params(data: Telnyx::VoiceCloneData::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A voice clone object.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::VoiceCloneData }) }
      def to_hash
      end
    end
  end
end
