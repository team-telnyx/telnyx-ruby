# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailInboxesTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.create

    assert_pattern do
      response => Telnyx::EmailInboxResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInbox
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailInboxResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInbox
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.list

    assert_pattern do
      response => Telnyx::Models::EmailInboxListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInbox]),
        meta: Telnyx::Models::EmailInboxListResponse::Meta
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
