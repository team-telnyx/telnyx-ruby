# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::AgentGateways::PolicyAttachmentsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policy_attachments.create(
        "32ce035d-3165-4031-b1a7-a7c0c259590a",
        policy: "strict"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicyAttachment
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.agent_gateways.policy_attachments.list("32ce035d-3165-4031-b1a7-a7c0c259590a")

    assert_pattern do
      response => Telnyx::Models::AgentGateways::PolicyAttachmentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::AgentGateways::AgentGatewayPolicyAttachment])
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.agent_gateways.policy_attachments.delete(
        "3394712f-2ad5-428a-8a3d-7a08d4b2906d",
        instance_id: "32ce035d-3165-4031-b1a7-a7c0c259590a"
      )

    assert_pattern do
      response => Telnyx::AgentGateways::AgentGatewayPolicyAttachmentResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::AgentGateways::AgentGatewayPolicyAttachment
      }
    end
  end
end
