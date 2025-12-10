# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::AddressesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.addresses.create(
        business_name: "Toy-O'Kon",
        country_code: "US",
        first_name: "Alfred",
        last_name: "Foster",
        locality: "Austin",
        street_address: "600 Congress Avenue"
      )

    assert_pattern do
      response => Telnyx::Models::AddressCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Address | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.addresses.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::AddressRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Address | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.addresses.list

    assert_pattern do
      response => Telnyx::Models::AddressListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Address]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.addresses.delete("id")

    assert_pattern do
      response => Telnyx::Models::AddressDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Address | nil
      }
    end
  end
end
