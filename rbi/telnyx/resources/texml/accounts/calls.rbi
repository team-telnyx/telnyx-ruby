# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        # TeXML REST Commands
        class Calls
          # TeXML REST Commands
          sig do
            returns(Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson)
          end
          attr_reader :recordings_json

          # TeXML REST Commands
          sig { returns(Telnyx::Resources::Texml::Accounts::Calls::Recordings) }
          attr_reader :recordings

          # TeXML REST Commands
          sig { returns(Telnyx::Resources::Texml::Accounts::Calls::Siprec) }
          attr_reader :siprec

          # TeXML REST Commands
          sig { returns(Telnyx::Resources::Texml::Accounts::Calls::Streams) }
          attr_reader :streams

          # Returns an individual call identified by its CallSid. This endpoint is
          # eventually consistent.
          sig do
            params(
              call_sid: String,
              account_sid: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::CallRetrieveResponse)
          end
          def retrieve(
            # The CallSid that identifies the call to update.
            call_sid,
            # The id of the account the resource belongs to.
            account_sid:,
            request_options: {}
          )
          end

          # Update TeXML call. Please note that the keys present in the payload MUST BE
          # formatted in CamelCase as specified in the example.
          sig do
            params(
              call_sid: String,
              account_sid: String,
              fallback_method:
                Telnyx::Texml::Accounts::UpdateCall::FallbackMethod::OrSymbol,
              fallback_url: String,
              method_: Telnyx::Texml::Accounts::UpdateCall::Method::OrSymbol,
              status: String,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::UpdateCall::StatusCallbackMethod::OrSymbol,
              texml: String,
              url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::CallUpdateResponse)
          end
          def update(
            # Path param: The CallSid that identifies the call to update.
            call_sid,
            # Path param: The id of the account the resource belongs to.
            account_sid:,
            # Body param: HTTP request type used for `FallbackUrl`.
            fallback_method: nil,
            # Body param: A failover URL for which Telnyx will retrieve the TeXML call
            # instructions if the Url is not responding.
            fallback_url: nil,
            # Body param: HTTP request type used for `Url`.
            method_: nil,
            # Body param: The value to set the call status to. Setting the status to completed
            # ends the call.
            status: nil,
            # Body param: URL destination for Telnyx to send status callback events to for the
            # call.
            status_callback: nil,
            # Body param: HTTP request type used for `StatusCallback`.
            status_callback_method: nil,
            # Body param: TeXML to replace the current one with.
            texml: nil,
            # Body param: The URL where TeXML will make a request to retrieve a new set of
            # TeXML instructions to continue the call flow.
            url: nil,
            request_options: {}
          )
          end

          # Initiate an outbound TeXML call. Telnyx will request TeXML from the XML Request
          # URL configured for the connection in the Mission Control Portal.
          sig do
            params(
              account_sid: String,
              params:
                T.any(
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithURL::OrHash,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::WithTeXml::OrHash,
                  Telnyx::Texml::Accounts::CallCallsParams::Params::ApplicationDefault::OrHash
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::CallCallsResponse)
          end
          def calls(
            # The id of the account the resource belongs to.
            account_sid,
            params:,
            request_options: {}
          )
          end

          # Returns multiple call resouces for an account. This endpoint is eventually
          # consistent.
          sig do
            params(
              account_sid: String,
              end_time: String,
              end_time_gt: String,
              end_time_lt: String,
              from: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              start_time: String,
              start_time_gt: String,
              start_time_lt: String,
              status:
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::OrSymbol,
              to: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse
            )
          end
          def retrieve_calls(
            # The id of the account the resource belongs to.
            account_sid,
            # Filters calls by their end date. Expected format is YYYY-MM-DD
            end_time: nil,
            # Filters calls by their end date (after). Expected format is YYYY-MM-DD
            end_time_gt: nil,
            # Filters calls by their end date (before). Expected format is YYYY-MM-DD
            end_time_lt: nil,
            # Filters calls by the from number.
            from: nil,
            # The number of the page to be displayed, zero-indexed, should be used in
            # conjuction with PageToken.
            page: nil,
            # The number of records to be displayed on a page
            page_size: nil,
            # Used to request the next page of results.
            page_token: nil,
            # Filters calls by their start date. Expected format is YYYY-MM-DD.
            start_time: nil,
            # Filters calls by their start date (after). Expected format is YYYY-MM-DD
            start_time_gt: nil,
            # Filters calls by their start date (before). Expected format is YYYY-MM-DD
            start_time_lt: nil,
            # Filters calls by status.
            status: nil,
            # Filters calls by the to number.
            to: nil,
            request_options: {}
          )
          end

          # Starts siprec session with specified parameters for call idientified by
          # call_sid.
          sig do
            params(
              call_sid: String,
              account_sid: String,
              connector_name: String,
              include_metadata_custom_headers:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::OrBoolean,
              name: String,
              secure:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::OrBoolean,
              session_timeout_secs: Integer,
              sip_transport:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::OrSymbol,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::OrSymbol,
              track:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse)
          end
          def siprec_json(
            # Path param: The CallSid that identifies the call to update.
            call_sid,
            # Path param: The id of the account the resource belongs to.
            account_sid:,
            # Body param: The name of the connector to use for the SIPREC session.
            connector_name: nil,
            # Body param: When set, custom parameters will be added as metadata
            # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
            # headers.
            include_metadata_custom_headers: nil,
            # Body param: Name of the SIPREC session. May be used to stop the SIPREC session
            # from TeXML instruction.
            name: nil,
            # Body param: Controls whether to encrypt media sent to your SRS using SRTP and
            # TLS. When set you need to configure SRS port in your connector to 5061.
            secure: nil,
            # Body param: Sets `Session-Expires` header to the INVITE. A reinvite is sent
            # every half the value set. Usefull for session keep alive. Minimum value is 90,
            # set to 0 to disable.
            session_timeout_secs: nil,
            # Body param: Specifies SIP transport protocol.
            sip_transport: nil,
            # Body param: URL destination for Telnyx to send status callback events to for the
            # siprec session.
            status_callback: nil,
            # Body param: HTTP request type used for `StatusCallback`.
            status_callback_method: nil,
            # Body param: The track to be used for siprec session. Can be `both_tracks`,
            # `inbound_track` or `outbound_track`. Defaults to `both_tracks`.
            track: nil,
            request_options: {}
          )
          end

          # Starts streaming media from a call to a specific WebSocket address.
          sig do
            params(
              call_sid: String,
              account_sid: String,
              bidirectional_codec:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::OrSymbol,
              bidirectional_mode:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::OrSymbol,
              name: String,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::OrSymbol,
              track:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::OrSymbol,
              url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse)
          end
          def streams_json(
            # Path param: The CallSid that identifies the call to update.
            call_sid,
            # Path param: The id of the account the resource belongs to.
            account_sid:,
            # Body param: Indicates codec for bidirectional streaming RTP payloads. Used only
            # with stream_bidirectional_mode=rtp. Case sensitive.
            bidirectional_codec: nil,
            # Body param: Configures method of bidirectional streaming (mp3, rtp).
            bidirectional_mode: nil,
            # Body param: The user specified name of Stream.
            name: nil,
            # Body param: Url where status callbacks will be sent.
            status_callback: nil,
            # Body param: HTTP method used to send status callbacks.
            status_callback_method: nil,
            # Body param: Tracks to be included in the stream
            track: nil,
            # Body param: The destination WebSocket address where the stream is going to be
            # delivered.
            url: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
