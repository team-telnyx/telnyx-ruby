# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class CommentTest < Test::Unit::TestCase
    should "comment list retrieve" do
      omit "ID req mismatch"
      comments = Comment.list
      assert_requested :get, "#{Telnyx.api_base}/v2/comments"
      assert_kind_of ListObject, comments
      assert_kind_of Telnyx::TelnyxObject, comments.first
    end

    should "comments get by id" do
      comment_id = "12ade33a-21c0-473b-b055-b3c836e1c292"
      comment = Comment.retrieve(comment_id)

      assert_requested :get, "#{Telnyx.api_base}/v2/comments/#{comment_id}"
      assert_kind_of Telnyx::TelnyxObject, comment
    end

    should "comments read" do
      omit "ID req mismatch"
      comment = Comment.retrieve("12ade33a-21c0-473b-b055-b3c836e1c292")
      id = comment.id
      comment.read(name: "new")
      assert_requested :patch, "#{Telnyx.api_base}/v2/comments/#{id}/read"
      assert_kind_of Telnyx::TelnyxObject, comment
    end
  end
end
