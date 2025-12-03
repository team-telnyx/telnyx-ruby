# typed: strong

module Telnyx
  module Models
    class MobilePushCredentialCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobilePushCredentialCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Alias to uniquely identify the credential
      sig { returns(String) }
      attr_accessor :alias_

      # Certificate as received from APNs
      sig { returns(String) }
      attr_accessor :certificate

      # Corresponding private key to the certificate as received from APNs
      sig { returns(String) }
      attr_accessor :private_key

      # Type of mobile push credential. Should be <code>android</code> here
      sig { returns(Telnyx::MobilePushCredentialCreateParams::Type::OrSymbol) }
      attr_accessor :type

      # Private key file in JSON format
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :project_account_json_file

      sig do
        params(
          alias_: String,
          certificate: String,
          private_key: String,
          type: Telnyx::MobilePushCredentialCreateParams::Type::OrSymbol,
          project_account_json_file: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Alias to uniquely identify the credential
        alias_:,
        # Certificate as received from APNs
        certificate:,
        # Corresponding private key to the certificate as received from APNs
        private_key:,
        # Type of mobile push credential. Should be <code>android</code> here
        type:,
        # Private key file in JSON format
        project_account_json_file:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            alias_: String,
            certificate: String,
            private_key: String,
            type: Telnyx::MobilePushCredentialCreateParams::Type::OrSymbol,
            project_account_json_file: T::Hash[Symbol, T.anything],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Type of mobile push credential. Should be <code>android</code> here
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MobilePushCredentialCreateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANDROID =
          T.let(
            :android,
            Telnyx::MobilePushCredentialCreateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MobilePushCredentialCreateParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
