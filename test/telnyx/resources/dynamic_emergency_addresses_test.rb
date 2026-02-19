# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DynamicEmergencyAddressesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dynamic_emergency_addresses.create(
        administrative_area: "TX",
        country_code: :US,
        house_number: "600",
        locality: "Austin",
        postal_code: "78701",
        street_name: "Congress"
      )

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyAddressCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyAddress | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_addresses.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyAddressRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyAddress | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_addresses.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::DynamicEmergencyAddress
    end

    assert_pattern do
      row => {
        administrative_area: String,
        country_code: Telnyx::DynamicEmergencyAddress::CountryCode,
        house_number: String,
        locality: String,
        postal_code: String,
        street_name: String,
        id: String | nil,
        created_at: String | nil,
        extended_address: String | nil,
        house_suffix: String | nil,
        record_type: String | nil,
        sip_geolocation_id: String | nil,
        status: Telnyx::DynamicEmergencyAddress::Status | nil,
        street_post_directional: String | nil,
        street_pre_directional: String | nil,
        street_suffix: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.dynamic_emergency_addresses.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyAddressDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::DynamicEmergencyAddress | nil
      }
    end
  end
end
