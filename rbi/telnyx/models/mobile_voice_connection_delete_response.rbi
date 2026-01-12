# typed: strong

module Telnyx
  module Models
    class MobileVoiceConnectionDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MobileVoiceConnectionDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::MobileVoiceConnection)) }
      attr_reader :data

      sig { params(data: Telnyx::MobileVoiceConnection::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MobileVoiceConnection::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::MobileVoiceConnection }) }
      def to_hash
      end
    end
  end
end
