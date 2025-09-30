# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Faxes::ActionsTest < Telnyx::Test::ResourceTest
  def test_cancel
    skip("Prism tests are disabled")

    response = @telnyx.faxes.actions.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Faxes::ActionCancelResponse
    end

    assert_pattern do
      response => {
        result: String | nil
      }
    end
  end

  def test_refresh
    skip("Prism tests are disabled")

    response = @telnyx.faxes.actions.refresh("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Faxes::ActionRefreshResponse
    end

    assert_pattern do
      response => {
        result: String | nil
      }
    end
  end
end
