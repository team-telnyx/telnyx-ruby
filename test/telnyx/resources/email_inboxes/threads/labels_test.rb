# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::Threads::LabelsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.threads.labels.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        labels: ["needs_review"]
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::Threads::LabelCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailInboxes::Threads::LabelCreateResponse::Data
      }
    end
  end

  def test_delete_all_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.threads.labels.delete_all(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        labels: ["needs_review"]
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data
      }
    end
  end
end
