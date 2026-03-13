# typed: strong

module Telnyx
  module Models
    class VerifyProfileUpdateTemplateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VerifyProfileUpdateTemplateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :template_id

      # The text content of the message template.
      sig { returns(String) }
      attr_accessor :text

      sig do
        params(
          template_id: String,
          text: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        template_id:,
        # The text content of the message template.
        text:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            template_id: String,
            text: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
