# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailDomainsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.create(domain: "example.com")

    assert_pattern do
      response => Telnyx::EmailDomainResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomain
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailDomainResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomain
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailDomainResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomain
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailDomain
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        dkim: Telnyx::EmailDomain::Dkim,
        dmarc_policy: Telnyx::EmailDmarcPolicy | nil,
        dns_records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DNSRecord]),
        domain: String,
        inbound: Telnyx::EmailDomain::Inbound,
        record_type: Telnyx::EmailDomain::RecordType,
        status: Telnyx::EmailDomainStatus,
        tracking: Telnyx::DomainsTrackingSettings,
        type: Telnyx::EmailDomainType,
        updated_at: Time,
        usable_for_inbound: Telnyx::Internal::Type::Boolean,
        usable_for_sending: Telnyx::Internal::Type::Boolean,
        verification: Telnyx::EmailDomainVerification,
        reputation: Telnyx::EmailDomain::Reputation | nil,
        verified_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailDomainResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomain
      }
    end
  end

  def test_retrieve_dns_records
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.retrieve_dns_records("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailDomainRetrieveDNSRecordsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DNSRecord])
      }
    end
  end

  def test_retrieve_health
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.retrieve_health("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailDomainRetrieveHealthResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailDomainRetrieveHealthResponse::Data
      }
    end
  end

  def test_verify
    skip("Mock server tests are disabled")

    response = @telnyx.email_domains.verify("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailDomainResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailDomain
      }
    end
  end
end
