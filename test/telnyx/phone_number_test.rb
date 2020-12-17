# frozen_string_literal: true

require_relative "../test_helper"
module Telnyx
  class PhoneNumberTest < Test::Unit::TestCase
    should "list resources" do
      stub = stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers")
             .to_return(body: JSON.generate(data: (1..5).map { |i| mock_response(i) }))
      phone_numbers = Telnyx::PhoneNumber.list
      assert_requested stub
      assert_kind_of Telnyx::ListObject, phone_numbers
      assert_kind_of Telnyx::PhoneNumber, phone_numbers.first
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

    should "delete resource" do
      stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
        .to_return(body: JSON.generate(data: mock_response("123")))
      stub = stub_request(:delete, "#{Telnyx.api_base}/v2/phone_numbers/123")
             .to_return(body: JSON.generate(data: mock_response("123")))
      phone_number = Telnyx::PhoneNumber.retrieve("123")
      phone_number.delete
      assert_requested stub
    end

    should "list all voice settings" do
      Telnyx::PhoneNumber.list_voice
      assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/voice"
    end

    context "nested commands" do
      should "update voice" do
        stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
          .to_return(body: JSON.generate(data: mock_response("123")))
        command_stub = stub_request(:patch, "#{Telnyx.api_base}/v2/phone_numbers/123/voice")
                       .with(body: { connection_id: 123 })
                       .to_return(body: JSON.generate(data: mock_voice_response))
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        phone_number.update_voice(connection_id: 123)
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

      should "list messaging" do
        list = Telnyx::PhoneNumber.messaging
        assert_kind_of Telnyx::ListObject, list
        assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/messaging"
      end

      should "get messaging" do
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        phone_number.messaging
        assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging"
      end

      should "update messaging" do
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        phone_number.update_messaging(messaging_profile_id: "12345", messaging_product: "P2P")
        assert_requested :patch, "#{Telnyx.api_base}/v2/phone_numbers/123/messaging"
      end

      should "list inbound channels" do
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        inbound_channels = phone_number.inbound_channels
        assert_equal inbound_channels, 7
        assert_requested :get, "#{Telnyx.api_base}/v2/phone_numbers/inbound_channels"
      end

      should "update inbound channel" do
        stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/123")
          .to_return(body: JSON.generate(data: mock_response("123")))
        stub_request(:get, "#{Telnyx.api_base}/v2/phone_numbers/inbound_channels")
          .to_return(body: JSON.generate(
            data: {
              channels: 7,
              record_type: "inbound_channels",
            }
          ))
        command_stub = stub_request(:patch, "#{Telnyx.api_base}/v2/phone_numbers/inbound_channels")
                       .to_return(body: JSON.generate(
                         data: {
                           channels: 7,
                           record_type: "inbound_channels",
                         }
                       ))
        phone_number = Telnyx::PhoneNumber.retrieve("123")
        phone_number.update_inbound_channels = 3
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
