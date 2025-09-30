# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::LogMessagesTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.log_messages.retrieve("id")

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
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.log_messages.list

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::LogMessageListResponse
    end

    assert_pattern do
      response => {
        log_messages: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage]) | nil,
        meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta | nil
      }
    end
  end

  def test_dismiss
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.log_messages.dismiss("id")

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
