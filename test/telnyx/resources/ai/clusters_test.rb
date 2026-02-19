# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AI::ClustersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.ai.clusters.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::AI::ClusterListResponse
    end

    assert_pattern do
      row => {
        bucket: String,
        created_at: Time,
        finished_at: Time,
        min_cluster_size: Integer,
        min_subcluster_size: Integer,
        status: Telnyx::Messaging10dlc::TaskStatus,
        task_id: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.ai.clusters.delete("task_id")

    assert_pattern do
      response => nil
    end
  end

  def test_compute_required_params
    skip("Mock server tests are disabled")

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
    skip("Mock server tests are disabled")

    response = @telnyx.ai.clusters.fetch_graph("task_id")

    assert_pattern do
      response => StringIO
    end
  end
end
