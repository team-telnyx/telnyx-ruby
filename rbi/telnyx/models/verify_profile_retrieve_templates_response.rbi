# typed: strong

module Telnyx
  module Models
    class VerifyProfileRetrieveTemplatesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifyProfileRetrieveTemplatesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::VerifyProfileMessageTemplateResponse]) }
      attr_accessor :data

      # A list of Verify profile message templates
      sig do
        params(
          data: T::Array[Telnyx::VerifyProfileMessageTemplateResponse::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::VerifyProfileMessageTemplateResponse] }
        )
      end
      def to_hash
      end
    end
  end
end
