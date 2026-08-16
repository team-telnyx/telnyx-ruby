# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebSearchTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.web_search.create(query: "latest AI agent frameworks")

    assert_pattern do
      response => Telnyx::Models::WebSearchCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WebSearchCreateResponse::Data | nil
      }
    end
  end

  def test_contents_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.web_search.contents(urls: ["https://en.wikipedia.org/wiki/Artificial_intelligence"])

    assert_pattern do
      response => Telnyx::Models::WebSearchContentsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::WebSearchContentsResponse::Data | nil
      }
    end
  end
end
