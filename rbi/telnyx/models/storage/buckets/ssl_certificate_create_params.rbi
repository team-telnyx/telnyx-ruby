# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class SslCertificateCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Buckets::SslCertificateCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The SSL certificate file
          sig { returns(T.nilable(Telnyx::Internal::FileInput)) }
          attr_reader :certificate

          sig { params(certificate: Telnyx::Internal::FileInput).void }
          attr_writer :certificate

          # The private key file
          sig { returns(T.nilable(Telnyx::Internal::FileInput)) }
          attr_reader :private_key

          sig { params(private_key: Telnyx::Internal::FileInput).void }
          attr_writer :private_key

          sig do
            params(
              certificate: Telnyx::Internal::FileInput,
              private_key: Telnyx::Internal::FileInput,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The SSL certificate file
            certificate: nil,
            # The private key file
            private_key: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                certificate: Telnyx::Internal::FileInput,
                private_key: Telnyx::Internal::FileInput,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
