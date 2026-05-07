# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::VirtualCrossConnectsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.create(region_code: "ashburn-va")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectRetrieveResponse::Data | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::VirtualCrossConnectListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        bandwidth_mbps: Float | nil,
        bgp_asn: Float | nil,
        cloud_provider: Telnyx::Models::VirtualCrossConnectListResponse::CloudProvider | nil,
        cloud_provider_region: String | nil,
        created_at: String | nil,
        name: String | nil,
        network_id: String | nil,
        primary_bgp_key: String | nil,
        primary_cloud_account_id: String | nil,
        primary_cloud_ip: String | nil,
        primary_enabled: Telnyx::Internal::Type::Boolean | nil,
        primary_routing_announcement: Telnyx::Internal::Type::Boolean | nil,
        primary_telnyx_ip: String | nil,
        record_type: String | nil,
        region: Telnyx::Models::VirtualCrossConnectListResponse::Region | nil,
        region_code: String | nil,
        status: Telnyx::InterfaceStatus | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.virtual_cross_connects.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::VirtualCrossConnectDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::VirtualCrossConnectDeleteResponse::Data | nil
      }
    end
  end
end
