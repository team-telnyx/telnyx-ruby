# frozen_string_literal: true

require ::File.expand_path("../test_helper", __FILE__)

class TelnyxTest < Test::Unit::TestCase
  should "allow app_info to be configured" do
    begin
      old = Telnyx.app_info
      Telnyx.set_app_info(
        "MyAwesomePlugin",
        partner_id: "partner_1234",
        url: "https://myawesomeplugin.info",
        version: "1.2.34"
      )
      assert_equal({
        name: "MyAwesomePlugin",
        partner_id: "partner_1234",
        url: "https://myawesomeplugin.info",
        version: "1.2.34",
      }, Telnyx.app_info)
    ensure
      Telnyx.app_info = old
    end
  end

  should "allow max_network_retries to be configured" do
    begin
      old = Telnyx.max_network_retries
      Telnyx.max_network_retries = 99
      assert_equal 99, Telnyx.max_network_retries
    ensure
      Telnyx.max_network_retries = old
    end
  end

  should "have default open and read timeouts" do
    assert_equal Telnyx.open_timeout, 30
    assert_equal Telnyx.read_timeout, 80
  end
end
