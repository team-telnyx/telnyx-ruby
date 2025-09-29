# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::ActionsTest < Telnyx::Test::ResourceTest
  def test_activate
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.actions.activate("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActionActivateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrdersActivationJob | nil
      }
    end
  end

  def test_cancel
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.actions.cancel("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActionCancelResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrder | nil,
        meta: Telnyx::Models::PortingOrders::ActionCancelResponse::Meta | nil
      }
    end
  end

  def test_confirm
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.actions.confirm("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActionConfirmResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrder | nil,
        meta: Telnyx::Models::PortingOrders::ActionConfirmResponse::Meta | nil
      }
    end
  end

  def test_share
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.actions.share("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::ActionShareResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PortingOrders::ActionShareResponse::Data | nil
      }
    end
  end
end
