# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UserAddressesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.user_addresses.create(
        business_name: "Toy-O'Kon",
        country_code: "US",
        first_name: "Alfred",
        last_name: "Foster",
        locality: "Austin",
        street_address: "600 Congress Avenue"
      )

    assert_pattern do
      response => Telnyx::Models::UserAddressCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserAddress | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.user_addresses.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::UserAddressRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserAddress | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.user_addresses.list

    assert_pattern do
      response => Telnyx::Models::UserAddressListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::UserAddress]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
