# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::MessagesTest < Telnyx::Test::ResourceTest
  def test_update_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        read_at: true
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::MessageUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::InboundMessage
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.messages.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::MessageListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::InboundMessage]),
        meta: Telnyx::EmailInboxes::EmailPaginationMeta
      }
    end
  end

  def test_drafts_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.drafts(
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
end
