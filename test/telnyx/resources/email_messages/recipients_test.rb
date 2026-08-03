# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailMessages::RecipientsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_messages.recipients.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        email_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::EmailMessages::RecipientRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailMessages::EmailRecipient
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_messages.recipients.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailMessages::RecipientListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailMessages::EmailRecipient]),
        meta: Telnyx::Models::EmailMessages::RecipientListResponse::Meta
      }
    end
  end
end
