# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Enterprises::Reputation::ExternalVerificationTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.external_verification.create(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        document_ids: ["2a7e8337-e803-4057-a4ae-26c40eb0bc6c"]
      )

    assert_pattern do
      response => Telnyx::Enterprises::Reputation::ExternalVerificationWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::Reputation::ExternalVerificationWrapped::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.external_verification.list("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Enterprises::Reputation::ExternalVerificationWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::Reputation::ExternalVerificationWrapped::Data
      }
    end
  end
end
