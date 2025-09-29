# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::ClustersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.ai.clusters.retrieve("task_id")

    assert_pattern do
      response => Telnyx::Models::AI::ClusterRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::ClusterRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.ai.clusters.list

    assert_pattern do
      response => Telnyx::Models::AI::ClusterListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::ClusterListResponse::Data]),
        meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.ai.clusters.delete("task_id")

    assert_pattern do
      response => nil
    end
  end

  def test_compute_required_params
    skip("Prism tests are disabled")

    response = @telnyx.ai.clusters.compute(bucket: "bucket")

    assert_pattern do
      response => Telnyx::Models::AI::ClusterComputeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::AI::ClusterComputeResponse::Data
      }
    end
  end

  def test_fetch_graph
    skip("Prism tests are disabled")

    response = @telnyx.ai.clusters.fetch_graph("task_id")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
