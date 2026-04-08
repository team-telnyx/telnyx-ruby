# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EnterprisesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.create(
        billing_address: {
          administrative_area: "Illinois",
          city: "Chicago",
          country: "United States",
          postal_code: "60601",
          street_address: "123 Main St"
        },
        billing_contact: {
          email: "billing@acme.com",
          first_name: "John",
          last_name: "Doe",
          phone_number: "15551234568"
        },
        country_code: "US",
        doing_business_as: "Acme",
        fein: "12-3456789",
        industry: "technology",
        legal_name: "Acme Corp Inc.",
        number_of_employees: :"51-200",
        organization_contact: {
          email: "jane.smith@acme.com",
          first_name: "Jane",
          job_title: "VP of Engineering",
          last_name: "Smith",
          phone: "+16035551234"
        },
        organization_legal_type: :corporation,
        organization_physical_address: {
          administrative_area: "Illinois",
          city: "Chicago",
          country: "United States",
          postal_code: "60601",
          street_address: "123 Main St"
        },
        organization_type: :commercial,
        website: "https://acme.com"
      )

    assert_pattern do
      response => Telnyx::Models::EnterpriseCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::EnterpriseRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::EnterpriseUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EnterprisePublic | nil
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
        corporate_registration_number: String | nil,
        country_code: String | nil,
        created_at: Time | nil,
        customer_reference: String | nil,
        doing_business_as: String | nil,
        dun_bradstreet_number: String | nil,
        fein: String | nil,
        industry: String | nil,
        legal_name: String | nil,
        number_of_employees: Telnyx::EnterprisePublic::NumberOfEmployees | nil,
        organization_contact: Telnyx::OrganizationContact | nil,
        organization_legal_type: Telnyx::EnterprisePublic::OrganizationLegalType | nil,
        organization_physical_address: Telnyx::PhysicalAddress | nil,
        organization_type: Telnyx::EnterprisePublic::OrganizationType | nil,
        primary_business_domain_sic_code: String | nil,
        professional_license_number: String | nil,
        role_type: Telnyx::EnterprisePublic::RoleType | nil,
        updated_at: Time | nil,
        website: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => nil
    end
  end
end
