# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        class BucketsSslCertificate < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the SSL certificate
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   Time when SSL certificate was uploaded
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute issued_by
          #
          #   @return [Telnyx::Models::Storage::Buckets::BucketsSslCertificate::IssuedBy, nil]
          optional :issued_by, -> { Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedBy }

          # @!attribute issued_to
          #
          #   @return [Telnyx::Models::Storage::Buckets::BucketsSslCertificate::IssuedTo, nil]
          optional :issued_to, -> { Telnyx::Storage::Buckets::BucketsSslCertificate::IssuedTo }

          # @!attribute valid_from
          #   The time the certificate is valid from
          #
          #   @return [Time, nil]
          optional :valid_from, Time

          # @!attribute valid_to
          #   The time the certificate is valid to
          #
          #   @return [Time, nil]
          optional :valid_to, Time

          # @!method initialize(id: nil, created_at: nil, issued_by: nil, issued_to: nil, valid_from: nil, valid_to: nil)
          #   @param id [String] Unique identifier for the SSL certificate
          #
          #   @param created_at [Time] Time when SSL certificate was uploaded
          #
          #   @param issued_by [Telnyx::Models::Storage::Buckets::BucketsSslCertificate::IssuedBy]
          #
          #   @param issued_to [Telnyx::Models::Storage::Buckets::BucketsSslCertificate::IssuedTo]
          #
          #   @param valid_from [Time] The time the certificate is valid from
          #
          #   @param valid_to [Time] The time the certificate is valid to

          # @see Telnyx::Models::Storage::Buckets::BucketsSslCertificate#issued_by
          class IssuedBy < Telnyx::Internal::Type::BaseModel
            # @!attribute common_name
            #   The common name of the entity the certificate was issued by
            #
            #   @return [String, nil]
            optional :common_name, String

            # @!attribute organization
            #   The organization the certificate was issued by
            #
            #   @return [String, nil]
            optional :organization, String

            # @!attribute organization_unit
            #   The organizational unit the certificate was issued by
            #
            #   @return [String, nil]
            optional :organization_unit, String

            # @!method initialize(common_name: nil, organization: nil, organization_unit: nil)
            #   @param common_name [String] The common name of the entity the certificate was issued by
            #
            #   @param organization [String] The organization the certificate was issued by
            #
            #   @param organization_unit [String] The organizational unit the certificate was issued by
          end

          # @see Telnyx::Models::Storage::Buckets::BucketsSslCertificate#issued_to
          class IssuedTo < Telnyx::Internal::Type::BaseModel
            # @!attribute common_name
            #   The common name of the entity the certificate was issued to
            #
            #   @return [String, nil]
            optional :common_name, String

            # @!attribute organization
            #   The organization the certificate was issued to
            #
            #   @return [String, nil]
            optional :organization, String

            # @!attribute organization_unit
            #   The organizational unit the certificate was issued to
            #
            #   @return [String, nil]
            optional :organization_unit, String

            # @!method initialize(common_name: nil, organization: nil, organization_unit: nil)
            #   @param common_name [String] The common name of the entity the certificate was issued to
            #
            #   @param organization [String] The organization the certificate was issued to
            #
            #   @param organization_unit [String] The organizational unit the certificate was issued to
          end
        end
      end
    end
  end
end
