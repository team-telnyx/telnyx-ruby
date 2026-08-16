# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::WebSearch::ResearchTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.web_search.research.create(
        query: "Compare the performance of RAG vs fine-tuning for domain-specific QA"
      )

    assert_pattern do
      response => Telnyx::Models::WebSearch::ResearchCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WebSearch::ResearchCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.web_search.research.retrieve("bf3026a5-dd57-44dd-b922-200041be3a4b")

    assert_pattern do
      response => Telnyx::Models::WebSearch::ResearchRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WebSearch::ResearchRetrieveResponse::Data | nil
      }
    end
  end
end
