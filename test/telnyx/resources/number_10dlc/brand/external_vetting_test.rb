# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Number10dlc::Brand::ExternalVettingTest < Telnyx::Test::ResourceTest
  def test_external_vetting_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.brand.external_vetting.external_vetting(
        "brandId",
        evp_id: "evpId",
        vetting_class: "vettingClass"
      )

    assert_pattern do
      response => Telnyx::Models::Number10dlc::Brand::ExternalVettingExternalVettingResponse
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

  def test_retrieve_external_vetting
    skip("Prism tests are disabled")

    response = @telnyx.number_10dlc.brand.external_vetting.retrieve_external_vetting("brandId")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Number10dlc::Brand::ExternalVettingRetrieveExternalVettingResponseItem])
    end
  end

  def test_update_external_vetting_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.number_10dlc.brand.external_vetting.update_external_vetting(
        "brandId",
        evp_id: "evpId",
        vetting_id: "vettingId"
      )

    assert_pattern do
      response => Telnyx::Models::Number10dlc::Brand::ExternalVettingUpdateExternalVettingResponse
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
