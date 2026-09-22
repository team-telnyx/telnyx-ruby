# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Compute::Funcs::ExportTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.compute.funcs.export.create(
        "id",
        endpoint: "https://api.honeycomb.io/v1/logs",
        headers: {"x-honeycomb-team": "abc123"},
        invocation_export_enabled: true,
        runtime_export_enabled: true
      )

    assert_pattern do
      response => Telnyx::Compute::Funcs::FuncLogExportConfigResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.export.list("id")

    assert_pattern do
      response => Telnyx::Compute::Funcs::FuncLogExportConfigResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Compute::Funcs::FuncLogExportConfigResponse::Data | nil
      }
    end
  end

  def test_delete_all
    skip("Mock server tests are disabled")

    response = @telnyx.compute.funcs.export.delete_all("id")

    assert_pattern do
      response => nil
    end
  end
end
