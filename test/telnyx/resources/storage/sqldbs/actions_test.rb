# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Sqldbs::ActionsTest < Telnyx::Test::ResourceTest
  def test_query_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.storage.sqldbs.actions.query(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        sql: "SELECT * FROM users WHERE name = ?"
      )

    assert_pattern do
      response => Telnyx::Models::Storage::Sqldbs::ActionQueryResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Storage::Sqldbs::ActionQueryResponse::Data | nil
      }
    end
  end
end
