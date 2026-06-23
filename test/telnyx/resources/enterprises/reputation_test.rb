# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Enterprises::ReputationTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.retrieve("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Enterprises::EnterpriseReputationPublicWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseReputationPublic
      }
    end
  end

  def test_disable
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.disable("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => nil
    end
  end

  def test_enable_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.enable(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        loa_document_id: "2a7e8337-e803-4057-a4ae-26c40eb0bc6c"
      )

    assert_pattern do
      response => Telnyx::Enterprises::EnterpriseReputationPublicWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseReputationPublic
      }
    end
  end

  def test_update_frequency_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.update_frequency(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        check_frequency: :weekly
      )

    assert_pattern do
      response => Telnyx::Enterprises::EnterpriseReputationPublicWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseReputationPublic
      }
    end
  end
end
