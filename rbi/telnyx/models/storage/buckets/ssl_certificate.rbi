# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class BucketsSslCertificate < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Buckets::BucketsSslCertificate,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier for the SSL certificate
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Time when SSL certificate was uploaded
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig do
            returns(
              T.nilable(
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy
              )
            )
          end
          attr_reader :issued_by

          sig do
            params(
              issued_by:
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy::OrHash
            ).void
          end
          attr_writer :issued_by

          sig do
            returns(
              T.nilable(
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo
              )
            )
          end
          attr_reader :issued_to

          sig do
            params(
              issued_to:
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo::OrHash
            ).void
          end
          attr_writer :issued_to

          # The time the certificate is valid from
          sig { returns(T.nilable(Time)) }
          attr_reader :valid_from

          sig { params(valid_from: Time).void }
          attr_writer :valid_from

          # The time the certificate is valid to
          sig { returns(T.nilable(Time)) }
          attr_reader :valid_to

          sig { params(valid_to: Time).void }
          attr_writer :valid_to

          sig do
            params(
              id: String,
              created_at: Time,
              issued_by:
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy::OrHash,
              issued_to:
                Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo::OrHash,
              valid_from: Time,
              valid_to: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the SSL certificate
            id: nil,
            # Time when SSL certificate was uploaded
            created_at: nil,
            issued_by: nil,
            issued_to: nil,
            # The time the certificate is valid from
            valid_from: nil,
            # The time the certificate is valid to
            valid_to: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                issued_by:
                  Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy,
                issued_to:
                  Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo,
                valid_from: Time,
                valid_to: Time
              }
            )
          end
          def to_hash
          end

          class IssuedBy < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy,
                  Telnyx::Internal::AnyHash
                )
              end

            # The common name of the entity the certificate was issued by
            sig { returns(T.nilable(String)) }
            attr_reader :common_name

            sig { params(common_name: String).void }
            attr_writer :common_name

            # The organization the certificate was issued by
            sig { returns(T.nilable(String)) }
            attr_reader :organization

            sig { params(organization: String).void }
            attr_writer :organization

            # The organizational unit the certificate was issued by
            sig { returns(T.nilable(String)) }
            attr_reader :organization_unit

            sig { params(organization_unit: String).void }
            attr_writer :organization_unit

            sig do
              params(
                common_name: String,
                organization: String,
                organization_unit: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The common name of the entity the certificate was issued by
              common_name: nil,
              # The organization the certificate was issued by
              organization: nil,
              # The organizational unit the certificate was issued by
              organization_unit: nil
            )
            end

            sig do
              override.returns(
                {
                  common_name: String,
                  organization: String,
                  organization_unit: String
                }
              )
            end
            def to_hash
            end
          end

          class IssuedTo < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo,
                  Telnyx::Internal::AnyHash
                )
              end

            # The common name of the entity the certificate was issued to
            sig { returns(T.nilable(String)) }
            attr_reader :common_name

            sig { params(common_name: String).void }
            attr_writer :common_name

            # The organization the certificate was issued to
            sig { returns(T.nilable(String)) }
            attr_reader :organization

            sig { params(organization: String).void }
            attr_writer :organization

            # The organizational unit the certificate was issued to
            sig { returns(T.nilable(String)) }
            attr_reader :organization_unit

            sig { params(organization_unit: String).void }
            attr_writer :organization_unit

            sig do
              params(
                common_name: String,
                organization: String,
                organization_unit: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The common name of the entity the certificate was issued to
              common_name: nil,
              # The organization the certificate was issued to
              organization: nil,
              # The organizational unit the certificate was issued to
              organization_unit: nil
            )
            end

            sig do
              override.returns(
                {
                  common_name: String,
                  organization: String,
                  organization_unit: String
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
end
