# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Compute::FuncsTest < Telnyx::Test::ResourceTest
  def test_retrieve_logs
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.retrieve_logs("id")

    assert_pattern do
      response => Telnyx::Models::Compute::FuncRetrieveLogsResponse
    end

    assert_pattern do
      case response
      in Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse
      in Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse
      end
    end
  end

  def test_retrieve_metric_aggregates_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.compute.funcs.retrieve_metric_aggregates(
        "id",
        end_time: "2019-12-27T18:11:19.117Z",
        start_time: "2019-12-27T18:11:19.117Z"
      )

    assert_pattern do
      response => Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveMetricAggregatesResponse::Data]) | nil,
        meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta | nil
      }
    end
  end

  def test_retrieve_revisions
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.retrieve_revisions("id")

    assert_pattern do
      response => Telnyx::Models::Compute::FuncRetrieveRevisionsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncRetrieveRevisionsResponse::Data]) | nil,
        meta: Telnyx::Compute::FunctionsObservabilityPaginationMeta | nil
      }
    end
  end

  def test_retrieve_ship_inspection
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.retrieve_ship_inspection("id")

    assert_pattern do
      response => Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data | nil
      }
    end
  end
end
