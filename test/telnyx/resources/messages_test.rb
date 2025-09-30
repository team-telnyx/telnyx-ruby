# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MessagesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.messages.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::MessageRetrieveResponse::Data | nil
      }
    end
  end

  def test_cancel_scheduled
    skip("Prism tests are disabled")

    response = @telnyx.messages.cancel_scheduled("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::MessageCancelScheduledResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        completed_at: Time | nil,
        cost: Telnyx::Models::MessageCancelScheduledResponse::Cost | nil,
        cost_breakdown: Telnyx::Models::MessageCancelScheduledResponse::CostBreakdown | nil,
        direction: Telnyx::Models::MessageCancelScheduledResponse::Direction | nil,
        encoding: String | nil,
        errors: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingError]) | nil,
        from: Telnyx::Models::MessageCancelScheduledResponse::From | nil,
        media: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageCancelScheduledResponse::Media]) | nil,
        messaging_profile_id: String | nil,
        organization_id: String | nil,
        parts: Integer | nil,
        received_at: Time | nil,
        record_type: Telnyx::Models::MessageCancelScheduledResponse::RecordType | nil,
        sent_at: Time | nil,
        subject: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        tcr_campaign_billable: Telnyx::Internal::Type::Boolean | nil,
        tcr_campaign_id: String | nil,
        tcr_campaign_registered: String | nil,
        text: String | nil,
        to: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessageCancelScheduledResponse::To]) | nil,
        type: Telnyx::Models::MessageCancelScheduledResponse::Type | nil,
        valid_until: Time | nil,
        webhook_failover_url: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_schedule_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messages.schedule(to: "+18445550001")

    assert_pattern do
      response => Telnyx::Models::MessageScheduleResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end

  def test_send__required_params
    skip("Prism tests are disabled")

    response = @telnyx.messages.send_(to: "+18445550001")

    assert_pattern do
      response => Telnyx::Models::MessageSendResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end

  def test_send_group_mms_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messages.send_group_mms(from: "+13125551234", to: ["+18655551234", "+14155551234"])

    assert_pattern do
      response => Telnyx::Models::MessageSendGroupMmsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end

  def test_send_long_code_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messages.send_long_code(from: "+18445550001", to: "+13125550002")

    assert_pattern do
      response => Telnyx::Models::MessageSendLongCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end

  def test_send_number_pool_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messages.send_number_pool(
        messaging_profile_id: "abc85f64-5717-4562-b3fc-2c9600000000",
        to: "to"
      )

    assert_pattern do
      response => Telnyx::Models::MessageSendNumberPoolResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end

  def test_send_short_code_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messages.send_short_code(from: "+18445550001", to: "+18445550001")

    assert_pattern do
      response => Telnyx::Models::MessageSendShortCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::OutboundMessagePayload | nil
      }
    end
  end
end
