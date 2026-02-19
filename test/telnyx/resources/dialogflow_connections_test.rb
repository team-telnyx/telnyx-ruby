# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DialogflowConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dialogflow_connections.create(
        "connection_id",
        service_account: {
          type: "bar",
          project_id: "bar",
          private_key_id: "bar",
          private_key: "bar",
          client_email: "bar",
          client_id: "bar",
          auth_uri: "bar",
          token_uri: "bar",
          auth_provider_x509_cert_url: "bar",
          client_x509_cert_url: "bar"
        }
      )

    assert_pattern do
      response => Telnyx::Models::DialogflowConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DialogflowConnectionCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.dialogflow_connections.retrieve("connection_id")

    assert_pattern do
      response => Telnyx::Models::DialogflowConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DialogflowConnectionRetrieveResponse::Data
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dialogflow_connections.update(
        "connection_id",
        service_account: {
          type: "bar",
          project_id: "bar",
          private_key_id: "bar",
          private_key: "bar",
          client_email: "bar",
          client_id: "bar",
          auth_uri: "bar",
          token_uri: "bar",
          auth_provider_x509_cert_url: "bar",
          client_x509_cert_url: "bar"
        }
      )

    assert_pattern do
      response => Telnyx::Models::DialogflowConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::DialogflowConnectionUpdateResponse::Data
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.dialogflow_connections.delete("connection_id")

    assert_pattern do
      response => nil
    end
  end
end
