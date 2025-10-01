# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AdvancedOrdersTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.create

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.list

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end

  def test_update_requirement_group
    skip("Prism tests are disabled")

    response = @telnyx.advanced_orders.update_requirement_group("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::Type::Unknown
    end
  end
end
