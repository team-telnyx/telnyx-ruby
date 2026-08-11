# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Rcs::BrandsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rcs.brands.create(
        addresses: {
          primary: {
            administrative_area: "IL",
            city: "Chicago",
            country_code: "US",
            line_1: "1 Main Street",
            postal_code: "60601"
          }
        },
        contacts: {
          brand: {
            contact_type: :BRAND,
            email: "jane@example.com",
            first_name: "Jane",
            last_name: "Doe",
            phone_number: "+13125550100"
          }
        },
        display_name: "Acme",
        identifiers: {ein: {identifier_type: :EIN, value: "12-3456789"}},
        legal_entity_type: :LIMITED_LIABILITY_COMPANY,
        legal_name: "Acme LLC",
        organization_type: :PRIVATE_PROFIT,
        website_url: "https://www.example.com"
      )

    assert_pattern do
      response => Telnyx::Rcs::BrandResponse
    end

    assert_pattern do
      response => {
        addresses: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandResponse::Address]),
        brand_id: String,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        contacts: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandContact]),
        display_name: String,
        identifiers: ^(Telnyx::Internal::Type::HashOf[union: Telnyx::Rcs::BrandResponse::Identifier]),
        legal_entity_type: String,
        legal_name: String,
        organization_type: String,
        profile_id: String | nil,
        status: Telnyx::Rcs::BrandResponse::Status,
        website_url: String
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.brands.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::BrandResponse
    end

    assert_pattern do
      response => {
        addresses: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandResponse::Address]),
        brand_id: String,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        contacts: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandContact]),
        display_name: String,
        identifiers: ^(Telnyx::Internal::Type::HashOf[union: Telnyx::Rcs::BrandResponse::Identifier]),
        legal_entity_type: String,
        legal_name: String,
        organization_type: String,
        profile_id: String | nil,
        status: Telnyx::Rcs::BrandResponse::Status,
        website_url: String
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.brands.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::BrandResponse
    end

    assert_pattern do
      response => {
        addresses: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandResponse::Address]),
        brand_id: String,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        contacts: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandContact]),
        display_name: String,
        identifiers: ^(Telnyx::Internal::Type::HashOf[union: Telnyx::Rcs::BrandResponse::Identifier]),
        legal_entity_type: String,
        legal_name: String,
        organization_type: String,
        profile_id: String | nil,
        status: Telnyx::Rcs::BrandResponse::Status,
        website_url: String
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.brands.list

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::BrandResponse])
    end
  end

  def test_submit
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.brands.submit("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::BrandResponse
    end

    assert_pattern do
      response => {
        addresses: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandResponse::Address]),
        brand_id: String,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        contacts: ^(Telnyx::Internal::Type::HashOf[Telnyx::Rcs::BrandContact]),
        display_name: String,
        identifiers: ^(Telnyx::Internal::Type::HashOf[union: Telnyx::Rcs::BrandResponse::Identifier]),
        legal_entity_type: String,
        legal_name: String,
        organization_type: String,
        profile_id: String | nil,
        status: Telnyx::Rcs::BrandResponse::Status,
        website_url: String
      }
    end
  end
end
