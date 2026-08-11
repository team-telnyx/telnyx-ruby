# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Rcs::AgentsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rcs.agents.create(
        brand_id: "11111111-1111-4111-8111-111111111111",
        configuration: {basics: {email: {address: "support@example.com", label: "Support"}}},
        display_name: "Acme Order Updates",
        use_case: :TRANSACTIONAL,
        idempotency_key: "Idempotency-Key"
      )

    assert_pattern do
      response => Telnyx::Rcs::AgentResponse
    end

    assert_pattern do
      response => {
        agent_id: String,
        basics_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        billing_category: Telnyx::Rcs::AgentResponse::BillingCategory | nil,
        brand_id: String,
        campaign_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        carrier_approvals: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse]),
        configuration: Telnyx::Rcs::AgentConfiguration,
        display_name: String,
        hosting_region: String | nil,
        profile_id: String | nil,
        status: Telnyx::Rcs::AgentResponse::Status,
        test_devices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse]),
        testing_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        use_case: Telnyx::Rcs::AgentUseCase
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::AgentResponse
    end

    assert_pattern do
      response => {
        agent_id: String,
        basics_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        billing_category: Telnyx::Rcs::AgentResponse::BillingCategory | nil,
        brand_id: String,
        campaign_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        carrier_approvals: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse]),
        configuration: Telnyx::Rcs::AgentConfiguration,
        display_name: String,
        hosting_region: String | nil,
        profile_id: String | nil,
        status: Telnyx::Rcs::AgentResponse::Status,
        test_devices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse]),
        testing_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        use_case: Telnyx::Rcs::AgentUseCase
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::AgentResponse
    end

    assert_pattern do
      response => {
        agent_id: String,
        basics_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        billing_category: Telnyx::Rcs::AgentResponse::BillingCategory | nil,
        brand_id: String,
        campaign_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        carrier_approvals: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse]),
        configuration: Telnyx::Rcs::AgentConfiguration,
        display_name: String,
        hosting_region: String | nil,
        profile_id: String | nil,
        status: Telnyx::Rcs::AgentResponse::Status,
        test_devices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse]),
        testing_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        use_case: Telnyx::Rcs::AgentUseCase
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.list

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::AgentResponse])
    end
  end

  def test_launch_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rcs.agents.launch(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        campaign: {
          company_overview: "Acme provides online retail services.",
          agent_overview: "The agent sends order confirmations and delivery updates.",
          consent_settings: {
            call_to_action: "Select RCS updates during checkout.",
            double_opt_in: false,
            help_response: "Contact support@example.com for help.",
            opt_in_message: "You are subscribed to Acme order updates.",
            opt_in_methods: [{method_type: :WEBSITE}],
            opt_out_response: "You will receive no more messages."
          },
          interactions: [{interaction_type: :TRANSACTIONAL_UPDATES}],
          message_examples: [
            "Your Acme order is confirmed.",
            "Your Acme order has shipped.",
            "Your Acme order was delivered."
          ]
        },
        testing: {test_url: "https://www.example.com/rcs/test-video"}
      )

    assert_pattern do
      response => Telnyx::Rcs::AgentResponse
    end

    assert_pattern do
      response => {
        agent_id: String,
        basics_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        billing_category: Telnyx::Rcs::AgentResponse::BillingCategory | nil,
        brand_id: String,
        campaign_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        carrier_approvals: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse]),
        configuration: Telnyx::Rcs::AgentConfiguration,
        display_name: String,
        hosting_region: String | nil,
        profile_id: String | nil,
        status: Telnyx::Rcs::AgentResponse::Status,
        test_devices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse]),
        testing_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        use_case: Telnyx::Rcs::AgentUseCase
      }
    end
  end

  def test_retrieve_carrier_approvals
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.retrieve_carrier_approvals("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse])
    end
  end

  def test_submit
    skip("Mock server tests are disabled")

    response = @telnyx.rcs.agents.submit("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Rcs::AgentResponse
    end

    assert_pattern do
      response => {
        agent_id: String,
        basics_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        billing_category: Telnyx::Rcs::AgentResponse::BillingCategory | nil,
        brand_id: String,
        campaign_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        capabilities: Telnyx::Rcs::CapabilitiesResponse,
        carrier_approvals: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::CarrierApprovalResponse]),
        configuration: Telnyx::Rcs::AgentConfiguration,
        display_name: String,
        hosting_region: String | nil,
        profile_id: String | nil,
        status: Telnyx::Rcs::AgentResponse::Status,
        test_devices: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Rcs::Agents::TestDeviceResponse]),
        testing_status: Telnyx::Rcs::AgentSubmissionStatus | nil,
        use_case: Telnyx::Rcs::AgentUseCase
      }
    end
  end
end
