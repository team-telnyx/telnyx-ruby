# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::IPsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ips.create(ip_address: "192.168.0.0")

    assert_pattern do
      response => Telnyx::Models::IPCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ips.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::IPRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ips.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58", ip_address: "192.168.0.0")

    assert_pattern do
      response => Telnyx::Models::IPUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ips.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::IP
    end

    assert_pattern do
      row => {
        id: String | nil,
        connection_id: String | nil,
        created_at: String | nil,
        ip_address: String | nil,
        port: Integer | nil,
        record_type: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ips.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::IPDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::IP | nil
      }
    end
  end
end
