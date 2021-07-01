# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class TelnyxErrorTest < Test::Unit::TestCase
    context "#to_s" do
      should "convert to string" do
        e = TelnyxError.new([{ "title" => "Missing required attributes" }])
        assert_equal 'Missing required attributes Full details: [{"title"=>"Missing required attributes"}]', e.to_s

        e = TelnyxError.new([{ "title" => "Missing required attributes" }], http_status: 422)
        assert_equal '(Status 422) Missing required attributes Full details: [{"title"=>"Missing required attributes"}]', e.to_s

        e = TelnyxError.new([{ "title" => "Missing required attributes" }], http_status: nil, http_body: nil, json_body: nil, http_headers: { request_id: "request-id" })
        assert_equal '(Request request-id) Missing required attributes Full details: [{"title"=>"Missing required attributes"}]', e.to_s

        e = TelnyxError.new([{ "title" => "Missing required attributes" }, { "title" => "Phone number must be in +E.164 format" }], http_status: nil, http_body: nil, json_body: nil, http_headers: { request_id: "request-id" })
        assert_equal '(Request request-id) Missing required attributes plus 1 other error. Full details: [{"title"=>"Missing required attributes"}, {"title"=>"Phone number must be in +E.164 format"}]', e.to_s
      end
    end
  end
end
