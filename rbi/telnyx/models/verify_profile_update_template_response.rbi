# typed: strong

module Telnyx
  module Models
    class VerifyProfileUpdateTemplateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifyProfileUpdateTemplateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::VerifyProfileMessageTemplateResponse)) }
      attr_reader :data

      sig do
        params(data: Telnyx::VerifyProfileMessageTemplateResponse::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::VerifyProfileMessageTemplateResponse::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::VerifyProfileMessageTemplateResponse })
      end
      def to_hash
      end
    end
  end
end
