# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Enterprises::ReputationTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::Enterprises::ReputationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data | nil
      }
    end
  end

  def test_disable
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.disable("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => nil
    end
  end

  def test_enable_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.enable(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        loa_document_id: "doc_01HXYZ1234ABCDEF"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::ReputationEnableResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::ReputationEnableResponse::Data | nil
      }
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
