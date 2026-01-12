# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Messaging10dlc::Brand::ExternalVettingTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_10dlc.brand.external_vetting.list("brandId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Messaging10dlc::Brand::ExternalVettingListResponseItem])
    end
  end

  def test_imports_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.brand.external_vetting.imports(
        "brandId",
        evp_id: "evpId",
        vetting_id: "vettingId"
      )

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::Brand::ExternalVettingImportsResponse
    end

    assert_pattern do
      response => {
        create_date: String | nil,
        evp_id: String | nil,
        vetted_date: String | nil,
        vetting_class: String | nil,
        vetting_id: String | nil,
        vetting_score: Integer | nil,
        vetting_token: String | nil
      }
    end
  end

  def test_order_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_10dlc.brand.external_vetting.order(
        "brandId",
        evp_id: "evpId",
        vetting_class: "vettingClass"
      )

    assert_pattern do
      response => Telnyx::Models::Messaging10dlc::Brand::ExternalVettingOrderResponse
    end

    assert_pattern do
      response => {
        create_date: String | nil,
        evp_id: String | nil,
        vetted_date: String | nil,
        vetting_class: String | nil,
        vetting_id: String | nil,
        vetting_score: Integer | nil,
        vetting_token: String | nil
      }
    end
  end
end
