# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class MessagingUrlDomainTest < Test::Unit::TestCase
    should "be listable" do
      messaging_url_domains = MessagingUrlDomain.list
      assert_requested :get, "#{Telnyx.api_base}/v2/messaging_url_domains"
      assert messaging_url_domains.is_a?(ListObject)
      assert messaging_url_domains[:data].is_a?(Array)
    end
  end
end
