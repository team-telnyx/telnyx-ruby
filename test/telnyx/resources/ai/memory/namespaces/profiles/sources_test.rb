# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::Namespaces::Profiles::SourcesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.sources.retrieve(
        "source_id",
        namespace: "namespace",
        profile_id: "profile_id"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.profiles.sources.list("profile_id", namespace: "namespace")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::AI::Collections::Source
    end

    assert_pattern do
      row => {
        id: String,
        memory_count: Integer,
        session_id: String | nil,
        created_at: String | nil,
        updated_at: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.sources.delete(
        "source_id",
        namespace: "namespace",
        profile_id: "profile_id"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse::Data
      }
    end
  end
end
