# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Enterprises::Reputation::RemediationTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.remediation.create(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        call_purpose: "Appointment reminders for our dental clinic.",
        phone_numbers: ["+19493253498", "+12134445566"]
      )

    assert_pattern do
      response => Telnyx::Enterprises::Reputation::RemediationRequestWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::Reputation::RemediationRequestWrapped::Data
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.remediation.retrieve(
        "b7c1f1c0-7a9d-4f0a-9d3e-2f6a1c4b8e21",
        enterprise_id: "4a6192a4-573d-446d-b3ce-aff9117272a6"
      )

    assert_pattern do
      response => Telnyx::Enterprises::Reputation::RemediationRequestWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::Reputation::RemediationRequestWrapped::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.remediation.list("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Enterprises::Reputation::RemediationListResponse
    end

    assert_pattern do
      row => {
        id: String,
        call_purpose: String,
        created_at: Time,
        phone_numbers_count: Integer,
        status: Telnyx::Enterprises::Reputation::RemediationStatus,
        updated_at: Time,
        tier1_completed_at: Time | nil,
        tier2_completed_at: Time | nil
      }
    end
  end
end
