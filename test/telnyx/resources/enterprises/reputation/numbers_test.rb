# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Enterprises::Reputation::NumbersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.create(
        "6a09cdc3-8948-47f0-aa62-74ac943d6c58",
        phone_numbers: ["+16035551234"]
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::NumberCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberCreateResponse::Data]) | nil,
        meta: Telnyx::MetaInfo | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.retrieve(
        "+16035551234",
        enterprise_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ReputationPhoneNumberWithReputationData | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.numbers.list("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

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
        reputation_data: Telnyx::ReputationData | nil,
        updated_at: Time | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.delete(
        "+16035551234",
        enterprise_id: "6a09cdc3-8948-47f0-aa62-74ac943d6c58"
      )

    assert_pattern do
      response => nil
    end
  end
end
