# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::FiltersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.filters.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        entries: ["@spam.example"],
        type: :blocklist
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::FilterCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailInboxes::FilterCreateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_inboxes.filters.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::FilterListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailInboxes::FilterListResponse::Data
      }
    end
  end

  def test_delete_all_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.filters.delete_all(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        entries: ["former-partner@example.com"],
        type: :allowlist
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::FilterDeleteAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailInboxes::FilterDeleteAllResponse::Data
      }
    end
  end
end
