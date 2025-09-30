# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AITest < Telnyx::Test::ResourceTest
  def test_retrieve_models
    skip("Prism tests are disabled")

    response = @telnyx.ai.retrieve_models

    assert_pattern do
      response => Telnyx::Models::AIRetrieveModelsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AIRetrieveModelsResponse::Data]),
        object: String | nil
      }
    end
  end

  def test_summarize_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.summarize(bucket: "bucket", filename: "filename")

    assert_pattern do
      response => Telnyx::Models::AISummarizeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AISummarizeResponse::Data
      }
    end
  end
end
