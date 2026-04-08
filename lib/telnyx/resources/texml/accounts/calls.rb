# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      class Accounts
        # TeXML REST Commands
        class Calls
          # TeXML REST Commands
          # @return [Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson]
          attr_reader :recordings_json

          # TeXML REST Commands
          # @return [Telnyx::Resources::Texml::Accounts::Calls::Recordings]
          attr_reader :recordings

          # TeXML REST Commands
          # @return [Telnyx::Resources::Texml::Accounts::Calls::Siprec]
          attr_reader :siprec

          # TeXML REST Commands
          # @return [Telnyx::Resources::Texml::Accounts::Calls::Streams]
          attr_reader :streams

          # Returns an individual call identified by its CallSid. This endpoint is
          # eventually consistent.
          #
          # @overload retrieve(call_sid, account_sid:, request_options: {})
          #
          # @param call_sid [String] The CallSid that identifies the call to update.
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallRetrieveResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallRetrieveParams
          def retrieve(call_sid, params)
            parsed, options = Telnyx::Texml::Accounts::CallRetrieveParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Calls/%2$s", account_sid, call_sid],
              model: Telnyx::Models::Texml::Accounts::CallRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::CallUpdateParams} for more details.
          #
          # Update TeXML call. Please note that the keys present in the payload MUST BE
          # formatted in CamelCase as specified in the example.
          #
          # @overload update(call_sid, account_sid:, fallback_method: nil, fallback_url: nil, method_: nil, status: nil, status_callback: nil, status_callback_method: nil, texml: nil, url: nil, request_options: {})
          #
          # @param call_sid [String] Path param: The CallSid that identifies the call to update.
          #
          # @param account_sid [String] Path param: The id of the account the resource belongs to.
          #
          # @param fallback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::FallbackMethod] Body param: HTTP request type used for `FallbackUrl`.
          #
          # @param fallback_url [String] Body param: A failover URL for which Telnyx will retrieve the TeXML call instruc
          #
          # @param method_ [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::Method] Body param: HTTP request type used for `Url`.
          #
          # @param status [String] Body param: The value to set the call status to. Setting the status to completed
          #
          # @param status_callback [String] Body param: URL destination for Telnyx to send status callback events to for the
          #
          # @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::UpdateCall::StatusCallbackMethod] Body param: HTTP request type used for `StatusCallback`.
          #
          # @param texml [String] Body param: TeXML to replace the current one with.
          #
          # @param url [String] Body param: The URL where TeXML will make a request to retrieve a new set of TeX
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallUpdateResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallUpdateParams
          def update(call_sid, params)
            parsed, options = Telnyx::Texml::Accounts::CallUpdateParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Calls/%2$s", account_sid, call_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::CallUpdateResponse,
              options: options
            )
          end

          # Initiate an outbound TeXML call. Telnyx will request TeXML from the XML Request
          # URL configured for the connection in the Mission Control Portal.
          #
          # @overload calls(account_sid, body:, request_options: {})
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param body [Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithURL, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::WithTeXml, Telnyx::Models::Texml::Accounts::CallCallsParams::Body::ApplicationDefault]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallCallsResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallCallsParams
          def calls(account_sid, params)
            parsed, options = Telnyx::Texml::Accounts::CallCallsParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Calls", account_sid],
              body: parsed[:body],
              model: Telnyx::Models::Texml::Accounts::CallCallsResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams} for more details.
          #
          # Returns multiple call resouces for an account. This endpoint is eventually
          # consistent.
          #
          # @overload retrieve_calls(account_sid, end_time: nil, end_time_gt: nil, end_time_lt: nil, from: nil, page: nil, page_size: nil, page_token: nil, start_time: nil, start_time_gt: nil, start_time_lt: nil, status: nil, to: nil, request_options: {})
          #
          # @param account_sid [String] The id of the account the resource belongs to.
          #
          # @param end_time [String] Filters calls by their end date. Expected format is YYYY-MM-DD
          #
          # @param end_time_gt [String] Filters calls by their end date (after). Expected format is YYYY-MM-DD
          #
          # @param end_time_lt [String] Filters calls by their end date (before). Expected format is YYYY-MM-DD
          #
          # @param from [String] Filters calls by the from number.
          #
          # @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
          #
          # @param page_size [Integer] The number of records to be displayed on a page
          #
          # @param page_token [String] Used to request the next page of results.
          #
          # @param start_time [String] Filters calls by their start date. Expected format is YYYY-MM-DD.
          #
          # @param start_time_gt [String] Filters calls by their start date (after). Expected format is YYYY-MM-DD
          #
          # @param start_time_lt [String] Filters calls by their start date (before). Expected format is YYYY-MM-DD
          #
          # @param status [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams::Status] Filters calls by status.
          #
          # @param to [String] Filters calls by the to number.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams
          def retrieve_calls(account_sid, params = {})
            parsed, options = Telnyx::Texml::Accounts::CallRetrieveCallsParams.dump_request(params)
            query = Telnyx::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["texml/Accounts/%1$s/Calls", account_sid],
              query: query.transform_keys(
                end_time: "EndTime",
                end_time_gt: "EndTime_gt",
                end_time_lt: "EndTime_lt",
                from: "From",
                page: "Page",
                page_size: "PageSize",
                page_token: "PageToken",
                start_time: "StartTime",
                start_time_gt: "StartTime_gt",
                start_time_lt: "StartTime_lt",
                status: "Status",
                to: "To"
              ),
              model: Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::CallSiprecJsonParams} for more details.
          #
          # Starts siprec session with specified parameters for call idientified by
          # call_sid.
          #
          # @overload siprec_json(call_sid, account_sid:, connector_name: nil, include_metadata_custom_headers: nil, name: nil, secure: nil, session_timeout_secs: nil, sip_transport: nil, status_callback: nil, status_callback_method: nil, track: nil, request_options: {})
          #
          # @param call_sid [String] Path param: The CallSid that identifies the call to update.
          #
          # @param account_sid [String] Path param: The id of the account the resource belongs to.
          #
          # @param connector_name [String] Body param: The name of the connector to use for the SIPREC session.
          #
          # @param include_metadata_custom_headers [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders] Body param: When set, custom parameters will be added as metadata (recording.ses
          #
          # @param name [String] Body param: Name of the SIPREC session. May be used to stop the SIPREC session f
          #
          # @param secure [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Secure] Body param: Controls whether to encrypt media sent to your SRS using SRTP and TL
          #
          # @param session_timeout_secs [Integer] Body param: Sets `Session-Expires` header to the INVITE. A reinvite is sent ever
          #
          # @param sip_transport [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::SipTransport] Body param: Specifies SIP transport protocol.
          #
          # @param status_callback [String] Body param: URL destination for Telnyx to send status callback events to for the
          #
          # @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod] Body param: HTTP request type used for `StatusCallback`.
          #
          # @param track [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Track] Body param: The track to be used for siprec session. Can be `both_tracks`, `inbo
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallSiprecJsonParams
          def siprec_json(call_sid, params)
            parsed, options = Telnyx::Texml::Accounts::CallSiprecJsonParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Calls/%2$s/Siprec.json", account_sid, call_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Texml::Accounts::CallStreamsJsonParams} for more details.
          #
          # Starts streaming media from a call to a specific WebSocket address.
          #
          # @overload streams_json(call_sid, account_sid:, bidirectional_codec: nil, bidirectional_mode: nil, name: nil, status_callback: nil, status_callback_method: nil, track: nil, url: nil, request_options: {})
          #
          # @param call_sid [String] Path param: The CallSid that identifies the call to update.
          #
          # @param account_sid [String] Path param: The id of the account the resource belongs to.
          #
          # @param bidirectional_codec [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec] Body param: Indicates codec for bidirectional streaming RTP payloads. Used only
          #
          # @param bidirectional_mode [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode] Body param: Configures method of bidirectional streaming (mp3, rtp).
          #
          # @param name [String] Body param: The user specified name of Stream.
          #
          # @param status_callback [String] Body param: Url where status callbacks will be sent.
          #
          # @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod] Body param: HTTP method used to send status callbacks.
          #
          # @param track [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::Track] Body param: Tracks to be included in the stream
          #
          # @param url [String] Body param: The destination WebSocket address where the stream is going to be de
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse]
          #
          # @see Telnyx::Models::Texml::Accounts::CallStreamsJsonParams
          def streams_json(call_sid, params)
            parsed, options = Telnyx::Texml::Accounts::CallStreamsJsonParams.dump_request(params)
            account_sid =
              parsed.delete(:account_sid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["texml/Accounts/%1$s/Calls/%2$s/Streams.json", account_sid, call_sid],
              headers: {"content-type" => "application/x-www-form-urlencoded"},
              body: parsed,
              model: Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
            @recordings_json = Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson.new(client: client)
            @recordings = Telnyx::Resources::Texml::Accounts::Calls::Recordings.new(client: client)
            @siprec = Telnyx::Resources::Texml::Accounts::Calls::Siprec.new(client: client)
            @streams = Telnyx::Resources::Texml::Accounts::Calls::Streams.new(client: client)
          end
        end
      end
    end
  end
end
