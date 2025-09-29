# typed: strong

module Telnyx
  module Models
    class OutboundVoiceProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OutboundVoiceProfileRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::OutboundVoiceProfile)) }
      attr_reader :data

      sig { params(data: Telnyx::OutboundVoiceProfile::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::OutboundVoiceProfile::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::OutboundVoiceProfile }) }
      def to_hash
      end
    end
  end
end
