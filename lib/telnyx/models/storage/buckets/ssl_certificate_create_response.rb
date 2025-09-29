# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      module Buckets
        # @see Telnyx::Resources::Storage::Buckets::SslCertificate#create
        class SslCertificateCreateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Storage::Buckets::BucketsSslCertificate, nil]
          optional :data, -> { Telnyx::Storage::Buckets::BucketsSslCertificate }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Storage::Buckets::BucketsSslCertificate]
        end
      end
    end
  end
end
