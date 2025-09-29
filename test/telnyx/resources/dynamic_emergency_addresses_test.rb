# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::DynamicEmergencyAddressesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.dynamic_emergency_addresses.create(
        administrative_area: "TX",
        country_code: :US,
        house_number: "house_number",
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
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.dynamic_emergency_addresses.list

    assert_pattern do
      response => Telnyx::Models::DynamicEmergencyAddressListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::DynamicEmergencyAddress]) | nil,
        meta: Telnyx::Metadata | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

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
