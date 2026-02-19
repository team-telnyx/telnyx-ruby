# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SiprecConnectorsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.siprec_connectors.create(host: "siprec.telnyx.com", name: "my-siprec-connector", port: 5060)

    assert_pattern do
      response => Telnyx::Models::SiprecConnectorCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SiprecConnectorCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.siprec_connectors.retrieve("connector_name")

    assert_pattern do
      response => Telnyx::Models::SiprecConnectorRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SiprecConnectorRetrieveResponse::Data
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.siprec_connectors.update(
        "connector_name",
        host: "siprec.telnyx.com",
        name: "my-siprec-connector",
        port: 5060
      )

    assert_pattern do
      response => Telnyx::Models::SiprecConnectorUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SiprecConnectorUpdateResponse::Data
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.siprec_connectors.delete("connector_name")

    assert_pattern do
      response => nil
    end
  end
end
