# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::BrandTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.brand.create(
        country: "US",
        display_name: "ABC Mobile",
        email: "email",
        entity_type: :PRIVATE_PROFIT,
        vertical: :TECHNOLOGY
      )

    assert_pattern do
      response => Telnyx::Messaging10dlc::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::Messaging10dlc::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::Messaging10dlc::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::Messaging10dlc::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::Messaging10dlc::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::Messaging10dlc::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::Messaging10dlc::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::Messaging10dlc::StockExchange | nil,
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

    response = @telnyx.messaging_10dlc.brand.retrieve("brandId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::BrandRetrieveResponse
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.brand.update(
        "brandId",
        country: "US",
        display_name: "ABC Mobile",
        email: "email",
        entity_type: :PRIVATE_PROFIT,
        vertical: :TECHNOLOGY
      )

    assert_pattern do
      response => Telnyx::Messaging10dlc::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::Messaging10dlc::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::Messaging10dlc::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::Messaging10dlc::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::Messaging10dlc::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::Messaging10dlc::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::Messaging10dlc::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::Messaging10dlc::StockExchange | nil,
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

    response = @telnyx.messaging_10dlc.brand.list

    assert_pattern do
      response => Telnyx::Internal::PerPagePaginationV2
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Messaging10dlc::BrandListResponse
    end

    assert_pattern do
      row => {
        assigned_campaings_count: Integer | nil,
        brand_id: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        display_name: String | nil,
        email: String | nil,
        entity_type: Telnyx::Messaging10dlc::EntityType | nil,
        failure_reasons: String | nil,
        identity_status: Telnyx::Messaging10dlc::BrandIdentityStatus | nil,
        status: Telnyx::Models::Messaging10dlc::BrandListResponse::Status | nil,
        tcr_brand_id: String | nil,
        updated_at: String | nil,
        website: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.brand.delete("brandId")

    assert_pattern do
      response => nil
    end
  end

  def test_get_feedback
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.brand.get_feedback("brandId")

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse
    end

    assert_pattern do
      response => {
        brand_id: String,
        category: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::BrandGetFeedbackResponse::Category])
      }
    end
  end

  def test_resend_2fa_email
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.brand.resend_2fa_email("brandId")

    assert_pattern do
      response => nil
    end
  end

  def test_revet
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.brand.revet("brandId")

    assert_pattern do
      response => Telnyx::Messaging10dlc::TelnyxBrand
    end

    assert_pattern do
      response => {
        brand_relationship: Telnyx::Messaging10dlc::TelnyxBrand::BrandRelationship,
        country: String,
        display_name: String,
        email: String,
        entity_type: Telnyx::Messaging10dlc::EntityType,
        vertical: String,
        alt_business_id: String | nil,
        alt_business_id_type: Telnyx::Messaging10dlc::AltBusinessIDType | nil,
        brand_id: String | nil,
        business_contact_email: String | nil,
        city: String | nil,
        company_name: String | nil,
        created_at: String | nil,
        csp_id: String | nil,
        ein: String | nil,
        failure_reasons: String | nil,
        first_name: String | nil,
        identity_status: Telnyx::Messaging10dlc::BrandIdentityStatus | nil,
        ip_address: String | nil,
        is_reseller: Telnyx::Internal::Type::Boolean | nil,
        last_name: String | nil,
        mobile_phone: String | nil,
        mock: Telnyx::Internal::Type::Boolean | nil,
        optional_attributes: Telnyx::Messaging10dlc::TelnyxBrand::OptionalAttributes | nil,
        phone: String | nil,
        postal_code: String | nil,
        reference_id: String | nil,
        state: String | nil,
        status: Telnyx::Messaging10dlc::TelnyxBrand::Status | nil,
        stock_exchange: Telnyx::Messaging10dlc::StockExchange | nil,
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
