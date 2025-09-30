# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Recordings::ActionsTest < Telnyx::Test::ResourceTest
  def test_delete_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.recordings.actions.delete(
        ids: %w[428c31b6-7af4-4bcb-b7f5-5013ef9657c1 428c31b6-7af4-4bcb-b7f5-5013ef9657c2]
      )

    assert_pattern do
      response => nil
    end
  end
end
