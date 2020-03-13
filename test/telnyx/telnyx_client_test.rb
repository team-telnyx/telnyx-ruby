# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class TelnyxClientTest < Test::Unit::TestCase
    context ".active_client" do
      should "be .default_client outside of #request" do
        assert_equal TelnyxClient.default_client, TelnyxClient.active_client
      end

      should "be active client inside of #request" do
        client = TelnyxClient.new
        client.request do
          assert_equal client, TelnyxClient.active_client
        end
      end
    end

    context ".default_client" do
      should "be a TelnyxClient" do
        assert_kind_of TelnyxClient, TelnyxClient.default_client
      end

      should "be a different client on each thread" do
        other_thread_client = nil
        thread = Thread.new do
          other_thread_client = TelnyxClient.default_client
        end
        thread.join
        refute_equal TelnyxClient.default_client, other_thread_client
      end
    end

    context ".default_conn" do
      should "be a Faraday::Connection" do
        assert_kind_of Faraday::Connection, TelnyxClient.default_conn
      end

      should "be a different connection on each thread" do
        other_thread_conn = nil
        thread = Thread.new do
          other_thread_conn = TelnyxClient.default_conn
        end
        thread.join
        refute_equal TelnyxClient.default_conn, other_thread_conn
      end
    end

    context ".should_retry?" do
      setup do
        Telnyx.stubs(:max_network_retries).returns(2)
      end

      should "retry on timeout" do
        assert TelnyxClient.should_retry?(Faraday::TimeoutError.new(""), 0)
      end

      should "retry on a failed connection" do
        assert TelnyxClient.should_retry?(Faraday::ConnectionFailed.new(""), 0)
      end

      should "not retry at maximum count" do
        refute TelnyxClient.should_retry?(RuntimeError.new, Telnyx.max_network_retries)
      end

      should "not retry on a certificate validation error" do
        refute TelnyxClient.should_retry?(Faraday::SSLError.new(""), 0)
      end
    end

    context ".sleep_time" do
      should "should grow exponentially" do
        TelnyxClient.stubs(:rand).returns(1)
        Telnyx.stubs(:max_network_retry_delay).returns(999)
        assert_equal(Telnyx.initial_network_retry_delay, TelnyxClient.sleep_time(1))
        assert_equal(Telnyx.initial_network_retry_delay * 2, TelnyxClient.sleep_time(2))
        assert_equal(Telnyx.initial_network_retry_delay * 4, TelnyxClient.sleep_time(3))
        assert_equal(Telnyx.initial_network_retry_delay * 8, TelnyxClient.sleep_time(4))
      end

      should "enforce the max_network_retry_delay" do
        TelnyxClient.stubs(:rand).returns(1)
        Telnyx.stubs(:initial_network_retry_delay).returns(1)
        Telnyx.stubs(:max_network_retry_delay).returns(2)
        assert_equal(1, TelnyxClient.sleep_time(1))
        assert_equal(2, TelnyxClient.sleep_time(2))
        assert_equal(2, TelnyxClient.sleep_time(3))
        assert_equal(2, TelnyxClient.sleep_time(4))
      end

      should "add some randomness" do
        random_value = 0.8
        TelnyxClient.stubs(:rand).returns(random_value)
        Telnyx.stubs(:initial_network_retry_delay).returns(1)
        Telnyx.stubs(:max_network_retry_delay).returns(8)

        base_value = Telnyx.initial_network_retry_delay * (0.5 * (1 + random_value))

        # the initial value cannot be smaller than the base,
        # so the randomness is ignored
        assert_equal(Telnyx.initial_network_retry_delay, TelnyxClient.sleep_time(1))

        # after the first one, the randomness is applied
        assert_equal(base_value * 2, TelnyxClient.sleep_time(2))
        assert_equal(base_value * 4, TelnyxClient.sleep_time(3))
        assert_equal(base_value * 8, TelnyxClient.sleep_time(4))
      end
    end

    context "#initialize" do
      should "set Telnyx.default_conn" do
        client = TelnyxClient.new
        assert_equal TelnyxClient.default_conn, client.conn
      end

      should "set a different connection if one was specified" do
        conn = Faraday.new
        client = TelnyxClient.new(conn)
        assert_equal conn, client.conn
      end
    end

    context "#execute_request" do
      context "headers" do
        should "support literal headers" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .with(headers: { "Authorization" => "Bearer foobar" })
            .to_return(body: JSON.generate(record_type: "messaging_profile"))

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles",
                                 headers: { "Authorization" => "Bearer foobar" })
        end

        should "support RestClient-style header keys" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .with(headers: { "Telnyx-Account" => "bar" })
            .to_return(body: JSON.generate(record_type: "messaging_profile"))

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles",
                                 headers: { telnyx_account: "bar" })
        end
      end

      context "logging" do
        setup do
          # Freeze time for the purposes of the `elapsed` parameter that we
          # emit for responses. I didn't want to bring in a new dependency for
          # this, but Mocha's `anything` parameter can't match inside of a hash
          # and is therefore not useful for this purpose. If we switch over to
          # rspec-mocks at some point, we can probably remove Timecop from the
          # project.
          Timecop.freeze(Time.local(1990))
        end

        teardown do
          Timecop.return
        end

        should "produce appropriate logging" do
          body = JSON.generate(object: "account")

          Util.expects(:log_info).with("Request to Telnyx API",
                                       method: :post,
                                       num_retries: 0,
                                       path: "/v2/messaging_profiles")
          Util.expects(:log_debug).with("Request details",
                                        body: "{}",
                                        query_params: nil)

          Util.expects(:log_info).with("Response from Telnyx API",
                                       elapsed: 0.0,
                                       method: :post,
                                       path: "/v2/messaging_profiles",
                                       request_id: "req_123",
                                       status: 200)
          Util.expects(:log_debug).with("Response details",
                                        body: body,
                                        # idempotency_key: "abc",
                                        request_id: "req_123")

          stub_post = stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
                      .to_return(
                        body: body,
                        headers: {
                          "X-Request-Id" => "req_123",
                        }
                      )

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles")
          assert_requested(stub_post)
        end

        should "produce logging on API error" do
          Util.expects(:log_info).with("Request to Telnyx API",
                                       method: :post,
                                       num_retries: 0,
                                       path: "/v2/messaging_profiles")
          Util.expects(:log_info).with("Response from Telnyx API",
                                       elapsed: 0.0,
                                       method: :post,
                                       path: "/v2/messaging_profiles",
                                       request_id: nil,
                                       status: 500)

          error = {
            code: "code",
            detail: "detail",
            source: "source",
            title: "title",
          }
          Util.expects(:log_error).with("Telnyx API error",
                                        status: 500,
                                        error_code: error[:code],
                                        error_detail: error[:detail],
                                        error_source: error[:source],
                                        error_title: error[:title],
                                        request_id: nil)

          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(
              body: JSON.generate(errors: [error]),
              status: 500
            )

          client = TelnyxClient.new
          assert_raises Telnyx::APIError do
            client.execute_request(:post, "/v2/messaging_profiles")
          end
        end
      end

      context "Telnyx-Account header" do
        should "use a globally set header" do
          begin
            old = Telnyx.telnyx_account
            Telnyx.telnyx_account = "acct_1234"

            stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
              .with(headers: { "Telnyx-Account" => Telnyx.telnyx_account })
              .to_return(body: JSON.generate(object: "account"))

            client = TelnyxClient.new
            client.execute_request(:post, "/v2/messaging_profiles", params: { name: "foobar" })
          ensure
            Telnyx.telnyx_account = old
          end
        end

        should "use a locally set header" do
          telnyx_account = "acct_0000"
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .with(headers: { "Telnyx-Account" => telnyx_account })
            .to_return(body: JSON.generate(object: "account"))

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles",
                                 headers: { telnyx_account: telnyx_account })
        end

        should "not send it otherwise" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .with do |req|
              req.headers["Telnyx-Account"].nil?
            end.to_return(body: JSON.generate(object: "account"))

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles")
        end
      end

      context "app_info" do
        should "send app_info if set" do
          begin
            old = Telnyx.app_info
            Telnyx.set_app_info(
              "MyAwesomePlugin",
              partner_id: "partner_1234",
              url: "https://myawesomeplugin.info",
              version: "1.2.34"
            )

            stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
              .with do |req|
                assert_equal \
                  "Telnyx/v2 RubyBindings/#{Telnyx::VERSION} " \
                  "MyAwesomePlugin/1.2.34 (https://myawesomeplugin.info)",
                  req.headers["User-Agent"]

                data = JSON.parse(req.headers["X-Telnyx-Client-User-Agent"],
                                  symbolize_names: true)

                assert_equal({
                  name: "MyAwesomePlugin",
                  partner_id: "partner_1234",
                  url: "https://myawesomeplugin.info",
                  version: "1.2.34",
                }, data[:application])

                true
              end.to_return(body: JSON.generate(record_type: "messaging_profile"))

            client = TelnyxClient.new
            client.execute_request(:post, "/v2/messaging_profiles")
          ensure
            Telnyx.app_info = old
          end
        end
      end

      context "error handling" do
        should "handle error response with empty body" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: "", status: 500)

          client = TelnyxClient.new
          e = assert_raises Telnyx::APIError do
            client.execute_request(:post, "/v2/messaging_profiles")
          end

          assert_equal 'Invalid response object from API: "" (HTTP response code was 500)', e.message
        end

        # Disabled this due to incompatibility with sim endpont actions.
        # should "handle success response with empty body" do
        #   stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
        #     .to_return(body: "", status: 200)

        #   client = TelnyxClient.new
        #   e = assert_raises Telnyx::APIError do
        #     client.execute_request(:post, "/v2/messaging_profiles")
        #   end

        #   assert_equal 'Invalid response object from API: "" (HTTP response code was 200)', e.message
        # end

        should "handle error response with unknown value" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(bar: "foo"), status: 500)

          client = TelnyxClient.new
          e = assert_raises Telnyx::APIError do
            client.execute_request(:post, "/v2/messaging_profiles")
          end

          assert_equal 'Invalid response object from API: "{\"bar\":\"foo\"}" (HTTP response code was 500)', e.message
        end

        should "raise InvalidRequestError on other 400" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_invalid_id_error), status: 400)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::InvalidRequestError => e
            assert_equal(400, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise AuthenticationError on 401" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_authentication_failed_error), status: 401)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::AuthenticationError => e
            assert_equal(401, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise PermissionError on 403" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_authorization_failed_error), status: 403)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::PermissionError => e
            assert_equal(403, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise ResourceNotFoundError on 404" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_resource_not_found_error), status: 404)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::ResourceNotFoundError => e
            assert_equal(404, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise MethodNotSupportedError on 405" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_method_not_supported_error), status: 405)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::MethodNotSupportedError => e
            assert_equal(405, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise TimeoutError on 408" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_timeout_error), status: 408)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::TimeoutError => e
            assert_equal(408, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise InvalidParametersError on 422" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_parameters_error), status: 422)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::InvalidParametersError => e
            assert_equal(422, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise RateLimitError on 429" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_rate_limit_error), status: 429)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::RateLimitError => e
            assert_equal(429, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise APIError on 500" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_api_error), status: 500)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::APIError => e
            assert_equal(500, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end

        should "raise ServiceUnavailableError on 503" do
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return(body: JSON.generate(make_service_unavailable_error), status: 503)
          client = TelnyxClient.new
          begin
            client.execute_request(:post, "/v2/messaging_profiles")
          rescue Telnyx::ServiceUnavailableError => e
            assert_equal(503, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end
        end
      end

      context "retry logic" do
        setup do
          Telnyx.stubs(:max_network_retries).returns(2)
        end

        should "retry failed requests and raise if error persists" do
          TelnyxClient.expects(:sleep_time).at_least_once.returns(0)
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_raise(Errno::ECONNREFUSED.new)

          client = TelnyxClient.new
          err = assert_raises Telnyx::APIConnectionError do
            client.execute_request(:post, "/v2/messaging_profiles")
          end
          assert_match(/Request was retried 2 times/, err.message)
        end

        should "retry failed requests and return successful response" do
          TelnyxClient.expects(:sleep_time).at_least_once.returns(0)

          i = 0
          stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
            .to_return do |_|
              if i < 2
                i += 1
                raise Errno::ECONNREFUSED
              else
                { body: JSON.generate("id" => "myid") }
              end
            end

          client = TelnyxClient.new
          client.execute_request(:post, "/v2/messaging_profiles")
        end
      end

      context "params serialization" do
        should "allows empty strings in params" do
          client = TelnyxClient.new
          stub_get = stub_request(
            :get,
            "#{Telnyx.api_base}/v2/messaging_profiles/123?"
          )
                     .with(query: {
                       "page[token]" => "   ",
                     })
                     .to_return(body: JSON.generate(data: { record_type: "messaging_profile", id: "foo" }))
          client.execute_request(:get, "/v2/messaging_profiles/123", params: {
            "page[token]" => "   ",
          })
          assert_requested(stub_get)
        end

        should "filter nils in params" do
          client = TelnyxClient.new
          client.execute_request(:get, "/v2/messaging_profiles", params: {
            "page[token]" => nil,
          })
          assert_requested(
            :get,
            "#{Telnyx.api_base}/v2/messaging_profiles?",
            query: {}
          )
        end

        should "merge query parameters in URL and params" do
          client = TelnyxClient.new
          stub_get = stub_request(
            :get,
            "#{Telnyx.api_base}/v2/messaging_profiles?"
          )
                     .with(query: {
                       page: { number: 10, token: "foo" },
                     })
                     .to_return(body: JSON.generate(data: { record_type: "messaging_profile", id: "foo" }))

          client.execute_request(:get, "/v2/messaging_profiles?page[token]=foo", params: {
            page: { number: 10 },
          })

          assert_requested(stub_get)
        end

        should "prefer query parameters in params when specified in URL as well" do
          client = TelnyxClient.new
          stub_get = stub_request(
            :get,
            "#{Telnyx.api_base}/v2/messaging_profiles?"
          )
                     .with(query: {
                       format: "xml",
                     })
                     .to_return(body: JSON.generate(data: { record_type: "messaging_profile", id: "foo" }))
          client.execute_request(:get, "/v2/messaging_profiles?format=json", params: {
            format: "xml",
          })
          assert_requested(stub_get)
        end
      end
    end

    context "#request" do
      should "return a result and response object" do
        stub_request(:post, "#{Telnyx.api_base}/v2/messaging_profiles")
          .to_return(body: JSON.generate(record_type: "messaging_profile"))

        client = TelnyxClient.new
        messaging_profile, resp = client.request { MessagingProfile.create }

        assert messaging_profile.is_a?(MessagingProfile)
        assert resp.is_a?(TelnyxResponse)
        assert_equal 200, resp.http_status
      end

      should "return the value of given block" do
        client = TelnyxClient.new
        ret, = client.request { 7 }
        assert_equal 7, ret
      end

      should "reset local thread state after a call" do
        begin
          Thread.current[:telnyx_client] = :telnyx_client

          client = TelnyxClient.new
          client.request {}

          assert_equal :telnyx_client, Thread.current[:telnyx_client]
        ensure
          Thread.current[:telnyx_client] = nil
        end
      end
    end
  end

  class SystemProfilerTest < Test::Unit::TestCase
    context "#uname" do
      should "run without failure" do
        # Don't actually check the result because we try a variety of different
        # strategies that will have different results depending on where this
        # test and running. We're mostly making sure that no exception is thrown.
        _ = TelnyxClient::SystemProfiler.uname
      end
    end

    context "#uname_from_system" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = TelnyxClient::SystemProfiler.uname_from_system
      end
    end

    context "#uname_from_system_ver" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = TelnyxClient::SystemProfiler.uname_from_system_ver
      end
    end
  end
end
