# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class SslCertificateCreateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::Buckets::SslCertificateCreateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T.nilable(Telnyx::Storage::Buckets::BucketsSslCertificate))
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::Storage::Buckets::BucketsSslCertificate::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Storage::Buckets::BucketsSslCertificate::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              { data: Telnyx::Storage::Buckets::BucketsSslCertificate }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
