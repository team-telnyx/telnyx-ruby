# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FqdnsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.fqdns.create(connection_id: "1516447646313612565", dns_record_type: "a", fqdn: "example.com")

    assert_pattern do
      response => Telnyx::Models::FqdnCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::FqdnRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.update("id")

    assert_pattern do
      response => Telnyx::Models::FqdnUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.list

    assert_pattern do
      response => Telnyx::Models::FqdnListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Fqdn]) | nil,
        meta: Telnyx::ConnectionsPaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.fqdns.delete("id")

    assert_pattern do
      response => Telnyx::Models::FqdnDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fqdn | nil
      }
    end
  end
end
