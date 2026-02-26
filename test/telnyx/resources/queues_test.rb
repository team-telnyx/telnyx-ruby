# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::QueuesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.queues.create(queue_name: "tier_1_support")

    assert_pattern do
      response => Telnyx::Models::QueueCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::QueueCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.queues.retrieve("queue_name")

    assert_pattern do
      response => Telnyx::Models::QueueRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::QueueRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.queues.update("queue_name", max_size: 200)

    assert_pattern do
      response => Telnyx::Models::QueueUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::QueueUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.queues.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::QueueListResponse
    end

    assert_pattern do
      row => {
        id: String,
        average_wait_time_secs: Integer,
        created_at: String,
        current_size: Integer,
        max_size: Integer,
        name: String,
        record_type: Telnyx::Models::QueueListResponse::RecordType,
        updated_at: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.queues.delete("queue_name")

    assert_pattern do
      response => nil
    end
  end
end
