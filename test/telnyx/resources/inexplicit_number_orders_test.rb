# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::InexplicitNumberOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.inexplicit_number_orders.create(
        ordering_groups: [
          {
            count_requested: "count_requested",
            country_iso: :US,
            phone_number_type: "phone_number_type"
          }
        ]
      )

    assert_pattern do
      response => Telnyx::Models::InexplicitNumberOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InexplicitNumberOrderCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.inexplicit_number_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::InexplicitNumberOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::InexplicitNumberOrderRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.inexplicit_number_orders.list

    assert_pattern do
      response => Telnyx::Models::InexplicitNumberOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::InexplicitNumberOrderListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
