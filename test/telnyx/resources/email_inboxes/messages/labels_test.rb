# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::EmailInboxes::Messages::LabelsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.labels.create(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        labels: %w[spam urgent]
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::Messages::LabelCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::InboundMessage
      }
    end
  end

  def test_delete_all_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.email_inboxes.messages.labels.delete_all(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        inbox_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        labels: ["spam"]
      )

    assert_pattern do
      response => Telnyx::Models::EmailInboxes::Messages::LabelDeleteAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::InboundMessage
      }
    end
  end
end
