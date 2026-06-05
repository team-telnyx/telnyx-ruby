# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Enterprises::Reputation::LoaTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.loa.update(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        loa_document_id: "2a7e8337-e803-4057-a4ae-26c40eb0bc6c"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::LoaUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseReputationPublic
      }
    end
  end

  def test_render
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.loa.render("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => StringIO
    end
  end
end
