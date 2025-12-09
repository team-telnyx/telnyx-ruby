# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagingHostedNumberOrdersTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.create

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.list

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingHostedNumberOrder]) | nil,
        meta: Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.delete("id")

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::MessagingHostedNumberOrder | nil
      }
    end
  end

  def test_check_eligibility_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging_hosted_number_orders.check_eligibility(phone_numbers: ["string"])

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse
    end

    assert_pattern do
      response => {
        phone_numbers: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber]) | nil
      }
    end
  end

  def test_create_verification_codes_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_hosted_number_orders.create_verification_codes(
        "id",
        phone_numbers: ["string"],
        verification_method: :sms
      )

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingHostedNumberOrderCreateVerificationCodesResponse::Data])
      }
    end
  end

  def test_validate_codes_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging_hosted_number_orders.validate_codes(
        "id",
        verification_codes: [{code: "code", phone_number: "phone_number"}]
      )

    assert_pattern do
      response => Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MessagingHostedNumberOrderValidateCodesResponse::Data | nil
      }
    end
  end
end
