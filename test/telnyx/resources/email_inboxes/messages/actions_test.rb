# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::Messages::ActionsTest < Telnyx::Test::ResourceTest
  def test_forward_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.actions.forward(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        to: "new@example.com"
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

  def test_reply_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.actions.reply(
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

  def test_reply_all_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.actions.reply_all(
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
