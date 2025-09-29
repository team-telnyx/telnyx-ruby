# typed: strong

module Telnyx
  module Models
    class VerifyProfileCreateTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VerifyProfileCreateTemplateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The text content of the message template.
      sig { returns(String) }
      attr_accessor :text

      sig do
        params(
          text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The text content of the message template.
        text:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { text: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
