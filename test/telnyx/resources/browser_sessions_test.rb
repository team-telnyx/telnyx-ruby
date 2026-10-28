# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::BrowserSessionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.create(policy: {allowed_domains: ["example.com"]})

    assert_pattern do
      response => Telnyx::Models::BrowserSessionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Session | nil
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::BrowserSessionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Session | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.list

    assert_pattern do
      response => Telnyx::Models::BrowserSessionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Session]) | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.delete("id")

    assert_pattern do
      response => Telnyx::Models::BrowserSessionDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Session | nil
      }
    end
  end

  def test_retrieve_artifact_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.browser_sessions.retrieve_artifact("artifactId", id: "id")

    assert_pattern do
      response => Telnyx::Models::BrowserSessionRetrieveArtifactResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data | nil
      }
    end
  end
end
