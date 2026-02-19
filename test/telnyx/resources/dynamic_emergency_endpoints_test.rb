# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DynamicEmergencyEndpointsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dynamic_emergency_endpoints.create(
        callback_number: "+13125550000",
        caller_name: "Jane Doe Desk Phone",
        dynamic_emergency_address_id: "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0"
      )

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyEndpointCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyEndpoint | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_endpoints.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyEndpointRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyEndpoint | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_endpoints.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::DynamicEmergencyEndpoint
    end

    assert_pattern do
      row => {
        callback_number: String,
        caller_name: String,
        dynamic_emergency_address_id: String,
        id: String | nil,
        created_at: String | nil,
        record_type: String | nil,
        sip_from_id: String | nil,
        status: Telnyx::DynamicEmergencyEndpoint::Status | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_endpoints.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyEndpointDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyEndpoint | nil
      }
    end
  end
end
