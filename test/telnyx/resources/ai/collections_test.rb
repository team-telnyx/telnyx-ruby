# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::CollectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.create(name: "Support Transcripts")

    assert_pattern do
      response => Telnyx::AI::CollectionEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collection | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.retrieve("support-transcripts")

    assert_pattern do
      response => Telnyx::AI::CollectionEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collection | nil
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.update("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::AI::CollectionEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collection | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Collection
    end

    assert_pattern do
      row => {
        created_at: Time | nil,
        description: String | nil,
        name: String | nil,
        record_type: String | nil,
        settings: Telnyx::AI::Collections::RetrievalSettingsWrapper | nil,
        slug: String | nil,
        sources: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Collections::Source]) | nil,
        status: String | nil,
        updated_at: Time | nil,
        uuid: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.delete("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_by_id
    skip("Mock server tests are disabled")

    response = @telnyx.ai.collections.retrieve_by_id("6a09ccbd-8f9b-4c3a-9b0e-2f1d3c4b5a6e")

    assert_pattern do
      response => Telnyx::AI::CollectionEnvelope
    end

    assert_pattern do
      response => {
        data: Telnyx::AI::Collection | nil
      }
    end
  end
end
