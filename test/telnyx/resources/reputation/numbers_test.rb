# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Reputation::NumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.reputation.numbers.retrieve("+16035551234")

    assert_pattern do
      response => Telnyx::Models::Reputation::NumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ReputationPhoneNumberWithReputationData | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.reputation.numbers.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::ReputationPhoneNumberWithReputationData
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        enterprise_id: String | nil,
        phone_number: String | nil,
        reputation_data: Telnyx::ReputationPhoneNumberWithReputationData::ReputationData | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.reputation.numbers.delete("+16035551234")

    assert_pattern do
      response => nil
    end
  end
end
