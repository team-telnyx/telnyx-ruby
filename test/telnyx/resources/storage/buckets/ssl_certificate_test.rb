# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Buckets::SslCertificateTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.storage.buckets.ssl_certificate.create("")

    assert_pattern do
      response => Telnyx::Models::Storage::Buckets::SslCertificateCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::Buckets::BucketsSslCertificate | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.storage.buckets.ssl_certificate.retrieve("")

    assert_pattern do
      response => Telnyx::Models::Storage::Buckets::SslCertificateRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::Buckets::BucketsSslCertificate | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.storage.buckets.ssl_certificate.delete("")

    assert_pattern do
      response => Telnyx::Models::Storage::Buckets::SslCertificateDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::Buckets::BucketsSslCertificate | nil
      }
    end
  end
end
