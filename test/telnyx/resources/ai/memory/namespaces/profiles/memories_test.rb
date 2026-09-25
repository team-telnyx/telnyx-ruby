# frozen_string_literal: true

require_relative "../../../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::Namespaces::Profiles::MemoriesTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.memories.retrieve(
        "memory_id",
        namespace: "namespace",
        profile_id: "profile_id"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.profiles.memories.list("profile_id", namespace: "namespace")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse
    end

    assert_pattern do
      row => {
        id: String,
        source_id: String | nil,
        text: String,
        recorded_at: String | nil
      }
    end
  end
end
