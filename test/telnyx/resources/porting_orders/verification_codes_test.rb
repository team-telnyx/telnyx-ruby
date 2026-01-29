# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::VerificationCodesTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.verification_codes.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingOrders::VerificationCodeListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        phone_number: String | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil,
        verified: Telnyx::Internal::Type::Boolean | nil
      }
    end
  end

  def test_send_
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.verification_codes.send_("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_verify
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.verification_codes.verify("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrders::VerificationCodeVerifyResponse::Data]) | nil
      }
    end
  end
end
