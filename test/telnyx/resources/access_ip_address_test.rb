# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AccessIPAddressTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.access_ip_address.create(ip_address: "ip_address")

    assert_pattern do
      response => Telnyx::AccessIPAddressResponse
    end

    assert_pattern do
      response => {
        id: String,
        ip_address: String,
        source: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.access_ip_address.retrieve("access_ip_address_id")

    assert_pattern do
      response => Telnyx::AccessIPAddressResponse
    end

    assert_pattern do
      response => {
        id: String,
        ip_address: String,
        source: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.access_ip_address.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AccessIPAddressResponse
    end

    assert_pattern do
      row => {
        id: String,
        ip_address: String,
        source: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.access_ip_address.delete("access_ip_address_id")

    assert_pattern do
      response => Telnyx::AccessIPAddressResponse
    end

    assert_pattern do
      response => {
        id: String,
        ip_address: String,
        source: String,
        status: Telnyx::CloudflareSyncStatus,
        user_id: String,
        created_at: Time | nil,
        description: String | nil,
        updated_at: Time | nil
      }
    end
  end
end
