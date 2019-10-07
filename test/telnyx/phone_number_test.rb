# frozen_string_literal: true

require_relative "../test_helper"
module Telnyx
  class PhoneNumberTest < Test::Unit::TestCase
    should "create resource" do
      stub = stub_request(:post, "#{Telnyx.api_base}/v2/phone_numbers")
             .to_return(body: JSON.generate(mock_response))
      phone_number = Telnyx::PhoneNumber.create
      assert_kind_of Telnyx::PhoneNumber, phone_number
      assert_requested stub
    end

    should "get resource" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
             .to_return(body: JSON.generate(data: mock_response("123")))
      phone_number = Telnyx::PhoneNumber.retrieve("123")
      assert_kind_of Telnyx::PhoneNumber, phone_number
      assert_requested stub
      assert_equal phone_number.id, "123"
    end

    should "update resource" do
      stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
        .to_return(body: JSON.generate(data: mock_response("123")))
      stub = stub_request(:patch, "#{Telnyx.api_base}/v2/phone_numbers/123")
             .to_return(body: JSON.generate(data: mock_response("123")))
      phone_number = Telnyx::PhoneNumber.retrieve("123")
      phone_number.save
      assert_requested stub
    end

    context "nested commands" do
      should "post voice" do
        stub_request(:post, "#{Telnyx.api_base}/v2/phone_numbers")
          .to_return(body: JSON.generate(id: "123", record_type: "phone_number"))
        command_stub = stub_request(:post, "#{Telnyx.api_base}/v2/phone_numbers/123/voice")
                       .with(body: { connection_id: 123 })
                       .to_return(body: JSON.generate(data: mock_voice_response))
        phone_number = Telnyx::PhoneNumber.create
        phone_number.create_voice(connection_id: 123)
        assert_requested command_stub
      end

      should "get voice" do
        stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
          .to_return(body: JSON.generate(data: mock_response("123")))
        command_stub = stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123/voice")
                       .to_return(body: JSON.generate(data: mock_voice_response("456")))
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        voice = phone_number.voice
        assert_requested command_stub
        assert_equal voice.data.connection_id, "456"
      end

      should "post messaging" do
        stub_request(:post, "#{Telnyx.api_base}/v2/phone_numbers")
          .to_return(body: JSON.generate(id: "123", record_type: "phone_number"))
        command_stub = stub_request(:post, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging")
                       .with(body: { foo: "bar" })
                       .to_return(body: JSON.generate(data: mock_messaging_response))
        phone_number = Telnyx::PhoneNumber.create
        phone_number.create_messaging(foo: "bar")
        assert_requested command_stub
      end

      should "get messaging" do
        stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
          .to_return(body: JSON.generate(data: mock_response("123")))
        command_stub = stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging")
                       .to_return(body: JSON.generate(data: mock_messaging_response("456")))
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        phone_number.messaging
        assert_requested command_stub
      end
    end

    def mock_response(id = nil)
      {
        id: (id || rand(0...1_000_000_000_000)),
        record_type: :phone_number,
        status: rand(1..10),
        phone_number: "+15555555555",
        address_id: rand(0...1_000_000_000_000),
      }
    end

    def mock_voice_response(id = nil)
      {
        connection_id: (id || rand(0...1_000_000_000_000)),
        connection_name: "Telnyx connection",
      }
    end

    def mock_messaging_response(_id = nil)
      {
        record_type: "messaging_phone_number",
        phone_number: "+18005550001",
        id: "+18665550001",
      }
    end
  end
end
