# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Messaging::RcsTest < Telnyx::Test::ResourceTest
  def test_invite_test_number_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging.rcs.invite_test_number("phone_number", id: "id")

    assert_pattern do
      response => Telnyx::Models::Messaging::RcInviteTestNumberResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data
      }
    end
  end

  def test_list_bulk_capabilities_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.messaging.rcs.list_bulk_capabilities(agent_id: "TestAgent", phone_numbers: ["+13125551234"])

    assert_pattern do
      response => Telnyx::Models::Messaging::RcListBulkCapabilitiesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Messaging::RcsCapabilities]) | nil
      }
    end
  end

  def test_retrieve_capabilities_required_params
    skip("Prism tests are disabled")

    response = @telnyx.messaging.rcs.retrieve_capabilities("phone_number", agent_id: "agent_id")

    assert_pattern do
      response => Telnyx::Models::Messaging::RcRetrieveCapabilitiesResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Messaging::RcsCapabilities | nil
      }
    end
  end
end
