# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class TexmlApplicationTest < Test::Unit::TestCase
    setup do
      @id = "d25f43b3-aea3-6a5d-7a1b-d83e5c100cce"
    end

    should "be listable" do
      applications = TexmlApplication.list
      assert_requested :get, "#{Telnyx.api_base}/v2/texml_applications"
      assert_kind_of ListObject, applications
      assert applications.is_a?(ListObject)
      assert applications[:data].is_a?(Array)
    end

    should "be retrieveable" do
      connection = TexmlApplication.retrieve(@id)
      assert_requested :get, "#{Telnyx.api_base}/v2/texml_applications/#{@id}"
      assert connection.is_a?(TexmlApplication)
    end
  end
end
