# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Enterprises::Reputation::NumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.retrieve(
        "+19493253498",
        enterprise_id: "4a6192a4-573d-446d-b3ce-aff9117272a6"
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.reputation.numbers.list("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Enterprises::Reputation::NumberListResponse
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

  def test_associate_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.associate(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        phone_numbers: ["+19493253498", "+12134445566"]
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data]),
        meta: Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta
      }
    end
  end

  def test_disassociate_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.disassociate(
        "+19493253498",
        enterprise_id: "4a6192a4-573d-446d-b3ce-aff9117272a6"
      )

    assert_pattern do
      response => nil
    end
  end

  def test_refresh_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.reputation.numbers.refresh(
        "4a6192a4-573d-446d-b3ce-aff9117272a6",
        phone_numbers: ["+19493253498"]
      )

    assert_pattern do
      response => Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Enterprises::Reputation::NumberRefreshResponse::Data
      }
    end
  end
end
