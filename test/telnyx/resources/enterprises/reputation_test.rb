# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Enterprises::ReputationTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.create(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        loa_document_id: "doc_01HXYZ1234ABCDEF"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::ReputationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::ReputationCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.list("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::Enterprises::ReputationListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::ReputationListResponse::Data | nil
      }
    end
  end

  def test_delete_all
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.delete_all("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => nil
    end
  end

  def test_update_frequency_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.update_frequency(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        check_frequency: :business_daily
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::ReputationUpdateFrequencyResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::ReputationUpdateFrequencyResponse::Data | nil
      }
    end
  end
end
