# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailBlocksTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.create(to: "spammer@bad.tld")

    assert_pattern do
      response => Telnyx::EmailBlockResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlock
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailBlockResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlock
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::EmailBlock
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        reason: Telnyx::EmailBlock::Reason,
        record_type: Telnyx::EmailBlock::RecordType,
        scope: Telnyx::EmailBlock::Scope,
        source: Telnyx::EmailBlock::Source,
        status: Telnyx::EmailBlock::Status,
        to: String,
        updated_at: Time,
        domain_id: String | nil,
        expires_at: Time | nil,
        from: String | nil,
        group_id: String | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::EmailBlockResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::EmailBlock
      }
    end
  end

  def test_retrieve_events
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.retrieve_events("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::EmailBlockRetrieveEventsResponse
    end

    assert_pattern do
      row => {
        id: String,
        actor: String,
        event_type: Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType,
        occurred_at: Time,
        reason: String,
        record_type: Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType,
        source: String,
        meta: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil
      }
    end
  end

  def test_retrieve_export
    skip("Mock server tests are disabled")

    response = @telnyx.email_blocks.retrieve_export

    assert_pattern do
      response => String
    end
  end
end
