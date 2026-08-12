# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::FqdnConnections::FqdnAuthenticationTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.fqdn_authentication.list("fqdn_connection_id")

    assert_pattern do
      response => Telnyx::Models::FqdnConnections::FqdnAuthenticationListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication | nil
      }
    end
  end

  def test_patch_all
    skip("Mock server tests are disabled")

    response = @telnyx.fqdn_connections.fqdn_authentication.patch_all("fqdn_connection_id")

    assert_pattern do
      response => Telnyx::Models::FqdnConnections::FqdnAuthenticationPatchAllResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FqdnConnections::FqdnConnectionsFqdnAuthentication | nil
      }
    end
  end
end
