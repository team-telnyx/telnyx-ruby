# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Texml::Accounts::CallsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.calls.retrieve("call_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallRetrieveResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        answered_by: Telnyx::Models::Texml::Accounts::CallRetrieveResponse::AnsweredBy | nil,
        caller_name: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        direction: Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Direction | nil,
        duration: String | nil,
        end_time: String | nil,
        from: String | nil,
        from_formatted: String | nil,
        price: String | nil,
        price_unit: String | nil,
        sid: String | nil,
        start_time: String | nil,
        status: Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Status | nil,
        to: String | nil,
        to_formatted: String | nil,
        uri: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.calls.update("call_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallUpdateResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        answered_by: Telnyx::Models::Texml::Accounts::CallUpdateResponse::AnsweredBy | nil,
        caller_name: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        direction: Telnyx::Models::Texml::Accounts::CallUpdateResponse::Direction | nil,
        duration: String | nil,
        end_time: String | nil,
        from: String | nil,
        from_formatted: String | nil,
        price: String | nil,
        price_unit: String | nil,
        sid: String | nil,
        start_time: String | nil,
        status: Telnyx::Models::Texml::Accounts::CallUpdateResponse::Status | nil,
        to: String | nil,
        to_formatted: String | nil,
        uri: String | nil
      }
    end
  end

  def test_calls_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.texml.accounts.calls.calls(
        "account_sid",
        application_sid: "example-app-sid",
        from: "+13120001234",
        to: "+13121230000"
      )

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallCallsResponse
    end

    assert_pattern do
      response => {
        from: String | nil,
        status: String | nil,
        to: String | nil
      }
    end
  end

  def test_retrieve_calls
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.calls.retrieve_calls("account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse
    end

    assert_pattern do
      response => {
        calls: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call]) | nil,
        end_: Integer | nil,
        first_page_uri: String | nil,
        next_page_uri: String | nil,
        page: Integer | nil,
        page_size: Integer | nil,
        start: Integer | nil,
        uri: String | nil
      }
    end
  end

  def test_siprec_json_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.calls.siprec_json("call_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        date_created: String | nil,
        date_updated: String | nil,
        error_code: String | nil,
        sid: String | nil,
        start_time: String | nil,
        status: Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Status | nil,
        track: Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Track | nil,
        uri: String | nil
      }
    end
  end

  def test_streams_json_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.texml.accounts.calls.streams_json("call_sid", account_sid: "account_sid")

    assert_pattern do
      response => Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse
    end

    assert_pattern do
      response => {
        account_sid: String | nil,
        call_sid: String | nil,
        date_updated: Time | nil,
        name: String | nil,
        sid: String | nil,
        status: Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status | nil,
        uri: String | nil
      }
    end
  end
end
