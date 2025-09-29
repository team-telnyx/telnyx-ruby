# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class SslCertificateDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Buckets::SslCertificateDeleteParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(request_options: {})
          end

          sig { override.returns({ request_options: Telnyx::RequestOptions }) }
          def to_hash
          end
        end
      end
    end
  end
end
