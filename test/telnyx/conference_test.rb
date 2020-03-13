# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class ConferenceTest < Test::Unit::TestCase
    setup do
      @call = create_call
      @conference = Conference.create call_control_id: @call.id, name: "conference!"
    end
    should "create conference" do
      assert_requested :post, "#{Telnyx.api_base}/v2/conferences"
      assert_kind_of Conference, @conference
    end

    should "list conferences" do
      conferences = Conference.list

      assert_requested :get, "#{Telnyx.api_base}/v2/conferences"
      assert_kind_of ListObject, conferences
      assert_kind_of Conference, conferences.first
    end

    should "have nested command instance methods" do
      assert defined? @conference.join
      assert defined? @conference.mute
      assert defined? @conference.unmute
      assert defined? @conference.unhold
    end

    context "commands" do
      should "join" do
        stub = stub_request(:post, format_url(@conference, "join"))
               .to_return(body: JSON.generate(result: "ok"))
        @conference.join
        assert_requested stub
      end

      should "mute" do
        stub = stub_request(:post, format_url(@conference, "mute"))
               .to_return(body: JSON.generate(result: "ok"))
        @conference.mute
        assert_requested stub
      end

      should "unmute" do
        stub = stub_request(:post, format_url(@conference, "unmute"))
               .to_return(body: JSON.generate(result: "ok"))
        @conference.unmute
        assert_requested stub
      end

      should "hold" do
        stub = stub_request(:post, format_url(@conference, "hold"))
               .to_return(body: JSON.generate(result: "ok"))
        @conference.hold
        assert_requested stub
      end

      should "unhold" do
        stub = stub_request(:post, format_url(@conference, "unhold"))
               .to_return(body: JSON.generate(result: "ok"))
        @conference.unhold
        assert_requested stub
      end
    end

    def create_call
      Telnyx::Call.create connection_id: "12345", to: "+15550001111", from: "+15550002222"
    end

    def format_url(conf, action)
      "#{Telnyx.api_base}/v2/conferences/#{conf.id}/actions/#{action}"
    end
  end
end
