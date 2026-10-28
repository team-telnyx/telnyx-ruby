# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PayConnectorsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.pay_connectors.create(config: {auth_type: :none}, name: "my-payment-connector")

    assert_pattern do
      response => Telnyx::PayConnectorResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PayConnector | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.pay_connectors.retrieve("my-payment-connector")

    assert_pattern do
      response => Telnyx::PayConnectorResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PayConnector | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.pay_connectors.update("my-payment-connector")

    assert_pattern do
      response => Telnyx::PayConnectorResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PayConnector | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.pay_connectors.list

    assert_pattern do
      response => Telnyx::Internal::EmailBracketCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PayConnector
    end

    assert_pattern do
      row => {
        id: String | nil,
        config: Telnyx::PayConnector::Config | nil,
        created_at: Time | nil,
        mode: Telnyx::PayConnector::Mode | nil,
        name: String | nil,
        organization_id: String | nil,
        record_type: Telnyx::PayConnector::RecordType | nil,
        type: String | nil,
        updated_at: Time | nil,
        user_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.pay_connectors.delete("my-payment-connector")

    assert_pattern do
      response => nil
    end
  end
end
