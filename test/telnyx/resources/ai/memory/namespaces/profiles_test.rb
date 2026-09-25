# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::AI::Memory::Namespaces::ProfilesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.profiles.list("namespace")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse
    end

    assert_pattern do
      row => {
        memory_count: Integer,
        profile_id: String
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.profiles.delete("profile_id", namespace: "namespace")

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse::Data
      }
    end
  end

  def test_ingest_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.ingest(
        "profile_id",
        namespace: "namespace",
        body: {messages: "bar"}
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse::Data
      }
    end
  end

  def test_recall_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.recall(
        "profile_id",
        namespace: "namespace",
        query: "where do invoices go?"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse::Data])
      }
    end
  end

  def test_remember_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.memory.namespaces.profiles.remember(
        "profile_id",
        namespace: "namespace",
        text: "Prefers window seats and flies out of ORD"
      )

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse::Data
      }
    end
  end

  def test_retrieve_summary_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.ai.memory.namespaces.profiles.retrieve_summary("profile_id", namespace: "namespace")

    assert_pattern do
      response => Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse::Data
      }
    end
  end
end
