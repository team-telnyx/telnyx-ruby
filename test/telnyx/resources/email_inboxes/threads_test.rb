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
      response => Telnyx::EmailInboxes::InboundThreadListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::InboundThread]),
        meta: Telnyx::EmailInboxes::EmailPaginationMeta
      }
    end
  end
end
