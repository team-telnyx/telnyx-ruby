# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Storage::Migrations::ActionsTest < Telnyx::Test::ResourceTest
  def test_stop
    skip("Prism tests are disabled")

    response = @telnyx.storage.migrations.actions.stop("")

    assert_pattern do
      response => Telnyx::Models::Storage::Migrations::ActionStopResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Storage::MigrationParams | nil
      }
    end
  end
end
