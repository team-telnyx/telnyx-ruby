# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CommentsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.comments.create

    assert_pattern do
      response => Telnyx::Models::CommentCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CommentCreateResponse::Data | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.comments.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::CommentRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CommentRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.comments.list

    assert_pattern do
      response => Telnyx::Models::CommentListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CommentListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_mark_as_read
    skip("Prism tests are disabled")

    response = @telnyx.comments.mark_as_read("id")

    assert_pattern do
      response => Telnyx::Models::CommentMarkAsReadResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CommentMarkAsReadResponse::Data | nil
      }
    end
  end
end
