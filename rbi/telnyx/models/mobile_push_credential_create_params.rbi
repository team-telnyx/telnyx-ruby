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

      sig do
        returns(
          T.any(
            Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios,
            Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android
          )
        )
      end
      attr_accessor :create_mobile_push_credential_request

      sig do
        params(
          create_mobile_push_credential_request:
            T.any(
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios::OrHash,
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(create_mobile_push_credential_request:, request_options: {})
      end

      sig do
        override.returns(
          {
            create_mobile_push_credential_request:
              T.any(
                Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios,
                Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module CreateMobilePushCredentialRequest
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios,
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android
            )
          end

        class Ios < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios,
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

          # Type of mobile push credential. Should be <code>ios</code> here
          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              alias_: String,
              certificate: String,
              private_key: String,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Alias to uniquely identify the credential
            alias_:,
            # Certificate as received from APNs
            certificate:,
            # Corresponding private key to the certificate as received from APNs
            private_key:,
            # Type of mobile push credential. Should be <code>ios</code> here
            type: :ios
          )
          end

          sig do
            override.returns(
              {
                alias_: String,
                certificate: String,
                private_key: String,
                type: Symbol
              }
            )
          end
          def to_hash
          end
        end

        class Android < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android,
                Telnyx::Internal::AnyHash
              )
            end

          # Alias to uniquely identify the credential
          sig { returns(String) }
          attr_accessor :alias_

          # Private key file in JSON format
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :project_account_json_file

          # Type of mobile push credential. Should be <code>android</code> here
          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              alias_: String,
              project_account_json_file: T::Hash[Symbol, T.anything],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Alias to uniquely identify the credential
            alias_:,
            # Private key file in JSON format
            project_account_json_file:,
            # Type of mobile push credential. Should be <code>android</code> here
            type: :android
          )
          end

          sig do
            override.returns(
              {
                alias_: String,
                project_account_json_file: T::Hash[Symbol, T.anything],
                type: Symbol
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
