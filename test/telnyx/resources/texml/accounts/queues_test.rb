# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::QueuesTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.queues.create("account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::QueueCreateResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        average_wait_time: Integer | nil,
        current_size: Integer | nil,
        date_created: String | nil,
        date_updated: String | nil,
        max_size: Integer | nil,
        sid: String | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.queues.retrieve("queue_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::QueueRetrieveResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        average_wait_time: Integer | nil,
        current_size: Integer | nil,
        date_created: String | nil,
        date_updated: String | nil,
        max_size: Integer | nil,
        sid: String | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.queues.update("queue_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::QueueUpdateResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        average_wait_time: Integer | nil,
        current_size: Integer | nil,
        date_created: String | nil,
        date_updated: String | nil,
        max_size: Integer | nil,
        sid: String | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.queues.list("account_sid")

    assert_pattern do
      response => Telnyx::Internal::DefaultPaginationForQueues
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Texml::Accounts::QueueListResponse
    end

    assert_pattern do
      row => {
        account_sid: String | nil,
        average_wait_time: Integer | nil,
        current_size: Integer | nil,
        date_created: String | nil,
        date_updated: String | nil,
        max_size: Integer | nil,
        sid: String | nil,
        subresource_uris: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        uri: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @telnyx.texml.accounts.queues.delete("queue_sid", account_sid: "account_sid")

    assert_pattern do
      response => nil
    end
  end
end
