# typed: strong

module Telnyx
  module Models
    class TexmlSecretsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TexmlSecretsParams, Telnyx::Internal::AnyHash)
        end

      # Name used as a reference for the secret, if the name already exists within the
      # account its value will be replaced
      sig { returns(String) }
      attr_accessor :name

      # Secret value which will be used when rendering the TeXML template
      sig { returns(String) }
      attr_accessor :value

      sig do
        params(
          name: String,
          value: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name used as a reference for the secret, if the name already exists within the
        # account its value will be replaced
        name:,
        # Secret value which will be used when rendering the TeXML template
        value:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            value: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
