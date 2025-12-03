# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BrandTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.brand.create(
        country: "US",
        display_name: "ABC Mobile",
        email: "email",
        entity_type: :PRIVATE_PROFIT,
        vertical: :TECHNOLOGY
      )

    assert_pattern do
      response => Telnyx::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::StockExchange | nil,
        stock_symbol: String | nil,
        street: String | nil,
        tcr_brand_id: String | nil,
        universal_ein: String | nil,
        updated_at: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil,
        website: String | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.brand.retrieve("brandId")

    assert_pattern do
      response => Telnyx::Models::BrandRetrieveResponse
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.brand.update(
        "brandId",
        country: "US",
        display_name: "ABC Mobile",
        email: "email",
        entity_type: :PRIVATE_PROFIT,
        vertical: :TECHNOLOGY
      )

    assert_pattern do
      response => Telnyx::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::StockExchange | nil,
        stock_symbol: String | nil,
        street: String | nil,
        tcr_brand_id: String | nil,
        universal_ein: String | nil,
        updated_at: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil,
        website: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.brand.list

    assert_pattern do
      response => Telnyx::Models::BrandListResponse
    end

    assert_pattern do
      response => {
        page: Integer | nil,
        records: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BrandListResponse::Record]) | nil,
        total_records: Integer | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.brand.delete("brandId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_feedback
    skip("Prism tests are disabled")

    response = @telnyx.brand.get_feedback("brandId")

    assert_pattern do
      response => Telnyx::Models::BrandGetFeedbackResponse
    end

    assert_pattern do
      response => {
        brand_id: String,
        category: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BrandGetFeedbackResponse::Category])
      }
    end
  end

  def test_resend_2fa_email
    skip("Prism tests are disabled")

    response = @telnyx.brand.resend_2fa_email("brandId")

    assert_pattern do
      response => nil
    end
  end

  def test_revet
    skip("Prism tests are disabled")

    response = @telnyx.brand.revet("brandId")

    assert_pattern do
      response => Telnyx::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::StockExchange | nil,
        stock_symbol: String | nil,
        street: String | nil,
        tcr_brand_id: String | nil,
        universal_ein: String | nil,
        updated_at: String | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil,
        website: String | nil
      }
    end
  end
end
