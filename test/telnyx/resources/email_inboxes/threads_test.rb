# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::ThreadsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.threads.retrieve(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::ThreadRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailInboxes::InboundThreadDetail,
        meta: Telnyx::EmailInboxes::EmailPaginationMeta
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.threads.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::EmailBracketCursorPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailInboxes::InboundThread
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        inbox_id: String,
        labels: ^(Telnyx::Internal::Type::ArrayOf[String]),
        last_message_at: Time,
        last_message_id: String,
        message_count: Integer,
        preview: String | nil,
        record_type: Telnyx::EmailInboxes::InboundThread::RecordType,
        subject: String | nil,
        unread_count: Integer,
        updated_at: Time
      }
    end
  end
end
