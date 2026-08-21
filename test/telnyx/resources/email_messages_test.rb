# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailMessagesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.create(from: "sender@example.com", to: ["recipient@example.com"])

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailMessageResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailMessage,
        suppressed: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SuppressedRecipient]) | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailMessageRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailMessageRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.list

    assert_pattern do
      response => Telnyx::Internal::EmailCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailInboxes::EmailMessage
    end

    assert_pattern do
      row => {
        id: String,
        attachments: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessage::Attachment]),
        bcc: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]),
        cc: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]),
        created_at: Time,
        events: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::MessageEvent]),
        from: Telnyx::EmailInboxes::EmailAddress,
        record_type: Telnyx::EmailInboxes::EmailMessage::RecordType,
        reply_to: String | nil,
        status: Telnyx::EmailInboxes::EmailMessage::Status,
        subject: String,
        template_id: String | nil,
        template_variables: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]),
        to: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]),
        inline_css: Telnyx::Internal::Type::Boolean | nil,
        recipient_statuses: ^(Telnyx::Internal::Type::HashOf[Integer]) | nil,
        sandbox: Telnyx::Internal::Type::Boolean | nil,
        scheduled_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_batch_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_messages.batch(
        messages: [
          {from: "sender@example.com", to: ["recipient1@example.com"]},
          {from: "sender@example.com", to: ["recipient2@example.com"]}
        ]
      )

    assert_pattern do
      response => Telnyx::Models::EmailMessageBatchResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessage]),
        errors: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::EmailMessageBatchResponse::Error]),
        meta: Telnyx::Models::EmailMessageBatchResponse::Meta
      }
    end
  end

  def test_delete_all_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.delete_all(address: "dev@stainless.com")

    assert_pattern do
      response => nil
    end
  end

  def test_delete_schedule
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.delete_schedule("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailMessageResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailMessage,
        suppressed: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::SuppressedRecipient]) | nil
      }
    end
  end

  def test_retrieve_events
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.retrieve_events("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::EmailCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::MessageEvent
    end

    assert_pattern do
      row => {
        occurred_at: Time,
        type: Telnyx::EmailEventType,
        payload: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil
      }
    end
  end
end
