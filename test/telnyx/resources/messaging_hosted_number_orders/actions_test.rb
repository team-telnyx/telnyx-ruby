# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::MessagingHostedNumberOrders::ActionsTest < Telnyx::Test::ResourceTest
  def test_upload_file
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.actions.upload_file("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrders::ActionUploadFileResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end
end
