# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InfringementClaimsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.infringement_claims.retrieve("e379fbc8-cd83-4bef-a280-a0ac9d00dcf8")

    assert_pattern do
      response => Telnyx::Models::InfringementClaimRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InfringementClaimRetrieveResponse::Data
      }
    end
  end

  def test_contest_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.infringement_claims.contest(
        "e379fbc8-cd83-4bef-a280-a0ac9d00dcf8",
        contest_notes: "We own the trademark outright; our registration precedes the claimant by three years. See attached certificate."
      )

    assert_pattern do
      response => Telnyx::Models::InfringementClaimContestResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InfringementClaimContestResponse::Data
      }
    end
  end
end
