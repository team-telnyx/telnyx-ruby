# typed: strong

module Telnyx
  module Models
    class VoiceDesignRenameResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceDesignRenameResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A summarized voice design object (without version-specific fields).
      sig { returns(T.nilable(Telnyx::VoiceDesignSummaryData)) }
      attr_reader :data

      sig { params(data: Telnyx::VoiceDesignSummaryData::OrHash).void }
      attr_writer :data

      # Response envelope for a voice design after a rename operation (no
      # version-specific fields).
      sig do
        params(data: Telnyx::VoiceDesignSummaryData::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A summarized voice design object (without version-specific fields).
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::VoiceDesignSummaryData }) }
      def to_hash
      end
    end
  end
end
