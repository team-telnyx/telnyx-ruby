# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EnterprisesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.create(
        billing_address: {
          administrative_area: "IL",
          city: "Chicago",
          country: "US",
          postal_code: "60601",
          street_address: "100 Main St"
        },
        billing_contact: {
          email: "billing@run065.example.com",
          first_name: "Alex",
          last_name: "Bill",
          phone_number: "+13125550001"
        },
        country_code: "US",
        doing_business_as: "Run 065 Debug",
        fein: "12-3456789",
        industry: :technology,
        jurisdiction_of_incorporation: "Delaware",
        legal_name: "Run 065 Debug Co",
        number_of_employees: :"51-200",
        organization_contact: {
          email: "org@run065.example.com",
          first_name: "Sam",
          job_title: "Compliance Lead",
          last_name: "Org",
          phone_number: "+13125550000"
        },
        organization_legal_type: :llc,
        organization_physical_address: {
          administrative_area: "IL",
          city: "Chicago",
          country: "US",
          postal_code: "60601",
          street_address: "100 Main St"
        },
        organization_type: :commercial,
        website: "https://run065.example.com"
      )

    assert_pattern do
      response => Telnyx::Models::EnterpriseCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.retrieve("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Models::EnterpriseRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.update("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Models::EnterpriseUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EnterprisePublic
    end

    assert_pattern do
      row => {
        id: String | nil,
        billing_address: Telnyx::BillingAddress | nil,
        billing_contact: Telnyx::BillingContact | nil,
        branded_calling_enabled: Telnyx::Internal::Type::Boolean | nil,
        corporate_registration_number: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        doing_business_as: String | nil,
        dun_bradstreet_number: String | nil,
        fein: String | nil,
        industry: String | nil,
        jurisdiction_of_incorporation: String | nil,
        legal_name: String | nil,
        number_of_employees: String | nil,
        number_reputation_enabled: Telnyx::Internal::Type::Boolean | nil,
        organization_contact: Telnyx::OrganizationContact | nil,
        organization_legal_type: String | nil,
        organization_physical_address: Telnyx::PhysicalAddress | nil,
        organization_type: String | nil,
        primary_business_domain_sic_code: String | nil,
        professional_license_number: String | nil,
        role_type: String | nil,
        updated_at: Time | nil,
        website: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.delete("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => nil
    end
  end

  def test_activate_branded_calling
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.activate_branded_calling("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Models::EnterpriseActivateBrandedCallingResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic
      }
    end
  end
end
