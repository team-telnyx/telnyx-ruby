# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::CommentsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.comments.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrders::CommentCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PortingOrders::CommentCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.comments.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingOrders::CommentListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        body: String | nil,
        created_at: Time | nil,
        porting_order_id: String | nil,
        record_type: String | nil,
        user_type: Telnyx::Models::PortingOrders::CommentListResponse::UserType | nil
      }
    end
  end
end
