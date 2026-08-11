# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Collections::SourcesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.collections.sources.create("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e", source_type: :voice)

    assert_pattern do
      response => Telnyx::Models::AI::Collections::SourceCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collections::Source | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.sources.list("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::Models::AI::Collections::SourceListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::Source]) | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.sources.delete("42", uuid: "6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => nil
    end
  end

  def test_replace_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.collections.sources.replace(
        "6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e",
        sources: [{source_type: :voice}]
      )

    assert_pattern do
      response => Telnyx::Models::AI::Collections::SourceReplaceResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::Source]) | nil,
        meta: Telnyx::Models::AI::Collections::SourceReplaceResponse::Meta | nil
      }
    end
  end
end
