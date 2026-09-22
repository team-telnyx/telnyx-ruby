# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::AI::Typesafe::V1Test < Telnyx::Test::ResourceTest
  def test_systemone_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.ai.typesafe.v1.systemone(
        questions: {
          team: {
            criteria: {
              billing: "Payments and refunds",
              technical_support: "Service faults and technical problems",
              sales: "New purchases"
            },
            instructions: "Choose the team that should handle this incident.",
            type: :choice
          },
          production_incident: {
            instructions: "Does the message describe an active production incident?",
            type: :noul
          },
          urgency: {
            criteria: %w[Low Normal High Critical],
            instructions: "Rate operational urgency.",
            type: :score
          }
        },
        state: "Our production calls are failing. Every customer is affected."
      )

    assert_pattern do
      response => Telnyx::Models::AI::Typesafe::V1SystemoneResponse
    end

    assert_pattern do
      response => {
        answers: ^(Telnyx::Internal::Type::HashOf[union: Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Answer]),
        model: String,
        usage: Telnyx::Models::AI::Typesafe::V1SystemoneResponse::Usage
      }
    end
  end
end
