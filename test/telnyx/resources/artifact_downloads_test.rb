# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ArtifactDownloadsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.artifact_downloads.retrieve("artifactId", expires: "expires", sig_: "sig")

    assert_pattern do
      response => StringIO
    end
  end
end
