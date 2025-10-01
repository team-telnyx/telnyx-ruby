# typed: strong

module Telnyx
  module Models
    class VerifyProfileMessageTemplateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VerifyProfileMessageTemplateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      sig { params(id: String, text: String).returns(T.attached_class) }
      def self.new(id: nil, text: nil)
      end

      sig { override.returns({ id: String, text: String }) }
      def to_hash
      end
    end
  end
end
