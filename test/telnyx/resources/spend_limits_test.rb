# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SpendLimitsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.spend_limits.create(body: {amount: 100, product: "inference"})

    assert_pattern do
      response => Telnyx::SpendLimitResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SpendLimit
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.spend_limits.update("inference", body: {amount: 250})

    assert_pattern do
      response => Telnyx::SpendLimitResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SpendLimit
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.spend_limits.list

    assert_pattern do
      response => Telnyx::Models::SpendLimitListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SpendLimit]),
        meta: Telnyx::Models::SpendLimitListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.spend_limits.delete("inference")

    assert_pattern do
      response => Telnyx::SpendLimitResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SpendLimit
      }
    end
  end
end
