# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::LogMessagesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.log_messages.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse
    end

    assert_pattern do
      response => {
        log_messages: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse::LogMessage]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.log_messages.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPaginationForLogMessages
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::ExternalConnections::LogMessageListResponse
    end

    assert_pattern do
      row => {
        code: String,
        title: String,
        detail: String | nil,
        meta: Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta | nil,
        source: Telnyx::Models::ExternalConnections::LogMessageListResponse::Source | nil
      }
    end
  end

  def test_dismiss
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.log_messages.dismiss("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::LogMessageDismissResponse
    end

    assert_pattern do
      response => {
        success: Telnyx::Internal::Type::Boolean | nil
      }
    end
  end
end
