# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Compute::FuncsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Compute::FuncListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        bindings: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncListResponse::Binding]) | nil,
        created_at: String | nil,
        invoke_url: String | nil,
        message: String | nil,
        name: String | nil,
        record_type: String | nil,
        status: String | nil,
        status_detail: String | nil,
        updated_at: String | nil
      }
    end
  end

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
