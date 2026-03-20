# typed: strong

module Telnyx
  module Models
    class VoiceDesignRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceDesignRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A voice design object with full version detail.
      sig { returns(T.nilable(Telnyx::VoiceDesignData)) }
      attr_reader :data

      sig { params(data: Telnyx::VoiceDesignData::OrHash).void }
      attr_writer :data

      # Response envelope for a single voice design with full version detail.
      sig do
        params(data: Telnyx::VoiceDesignData::OrHash).returns(T.attached_class)
      end
      def self.new(
        # A voice design object with full version detail.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::VoiceDesignData }) }
      def to_hash
      end
    end
  end
end
