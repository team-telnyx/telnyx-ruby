# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::DraftsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.drafts.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailDraftResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailDraft
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.drafts.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailDraftResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailDraft
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.drafts.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailDraftResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailDraft
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.drafts.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::EmailBracketCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailInboxes::EmailDraft
    end

    assert_pattern do
      row => {
        id: String,
        inbox_id: String,
        record_type: Telnyx::EmailInboxes::EmailDraft::RecordType,
        status: Telnyx::EmailInboxes::EmailDraft::Status,
        attachments: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        bcc: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]) | nil,
        cc: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]) | nil,
        created_at: Time | nil,
        from: String | nil,
        from_name: String | nil,
        headers: ^(Telnyx::Internal::Type::HashOf[String]) | nil,
        html_body: String | nil,
        labels: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        metadata: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        reply_to: String | nil,
        reply_to_message_id: String | nil,
        sent_at: Time | nil,
        sent_message_id: String | nil,
        subject: String | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        text_body: String | nil,
        thread_id: String | nil,
        to: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailAddress]) | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.drafts.delete(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_patch_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.drafts.patch(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::EmailInboxes::EmailDraftResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::EmailDraft
      }
    end
  end

  def test_send__required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.drafts.send_(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

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
end
