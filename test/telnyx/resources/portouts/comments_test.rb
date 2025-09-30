# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Portouts::CommentsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.portouts.comments.create("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::CommentCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Portouts::CommentCreateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.portouts.comments.list("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Portouts::CommentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::CommentListResponse::Data]) | nil,
        meta: Telnyx::Metadata | nil
      }
    end
  end
end
