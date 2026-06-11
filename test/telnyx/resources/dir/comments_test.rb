# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::CommentsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.dir.comments.create(
        "16635d38-75a6-4481-82e8-69af60e05011",
        content: "Re-uploaded the certificate. New document_id: 89450109-ee35-411c-b5bb-14f1d806fca2."
      )

    assert_pattern do
      response => Telnyx::Models::Dir::CommentCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::CommentCreateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.comments.list("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::Dir::CommentListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        author_name: String | nil,
        author_role: Telnyx::Models::Dir::CommentListResponse::AuthorRole | nil,
        comment_type: Telnyx::Models::Dir::CommentListResponse::CommentType | nil,
        content: String | nil,
        created_at: Time | nil,
        entity_type: Telnyx::Models::Dir::CommentListResponse::EntityType | nil,
        visibility: Telnyx::Models::Dir::CommentListResponse::Visibility | nil
      }
    end
  end
end
