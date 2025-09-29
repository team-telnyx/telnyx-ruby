# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DynamicEmergencyEndpointsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.dynamic_emergency_endpoints.list

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyEndpointListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DynamicEmergencyEndpoint]) | nil,
        meta: Telnyx::Metadata | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
