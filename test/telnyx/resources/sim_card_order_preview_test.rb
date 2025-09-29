# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardOrderPreviewTest < Telnyx::Test::ResourceTest
  def test_preview_required_params
    skip("Prism tests are disabled")

    response = @telnyx.sim_card_order_preview.preview(address_id: "1293384261075731499", quantity: 21)

    assert_pattern do
      response => Telnyx::Models::SimCardOrderPreviewPreviewResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardOrderPreviewPreviewResponse::Data | nil
      }
    end
  end
end
