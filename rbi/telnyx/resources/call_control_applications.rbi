# typed: strong

module Telnyx
  module Resources
    class CallControlApplications
      # Create a call control application.
      sig do
        params(
          application_name: String,
          webhook_event_url: String,
          active: T::Boolean,
          anchorsite_override:
            Telnyx::CallControlApplicationCreateParams::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type:
            Telnyx::CallControlApplicationCreateParams::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::CallControlApplicationInbound::OrHash,
          outbound: Telnyx::CallControlApplicationOutbound::OrHash,
          redact_dtmf_debug_logging: T::Boolean,
          webhook_api_version:
            Telnyx::CallControlApplicationCreateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallControlApplicationCreateResponse)
      end
      def create(
        # A user-assigned name to help manage the application.
        application_name:,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # <code>Latency</code> directs Telnyx to route media through the site with the
        # lowest round-trip time to the user's connection. Telnyx calculates this time
        # using ICMP ping messages. This can be disabled by specifying a site to handle
        # all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this Call Control
        # Application.
        call_cost_in_webhooks: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Specifies whether calls to phone numbers associated with this connection should
        # hangup after timing out.
        first_command_timeout: nil,
        # Specifies how many seconds to wait before timing out a dial command.
        first_command_timeout_secs: nil,
        inbound: nil,
        outbound: nil,
        # When enabled, DTMF digits entered by users will be redacted in debug logs to
        # protect PII data entered through IVR interactions.
        redact_dtmf_debug_logging: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing call control application.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallControlApplicationRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing call control application.
      sig do
        params(
          id: String,
          application_name: String,
          webhook_event_url: String,
          active: T::Boolean,
          anchorsite_override:
            Telnyx::CallControlApplicationUpdateParams::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type:
            Telnyx::CallControlApplicationUpdateParams::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::CallControlApplicationInbound::OrHash,
          outbound: Telnyx::CallControlApplicationOutbound::OrHash,
          redact_dtmf_debug_logging: T::Boolean,
          tags: T::Array[String],
          webhook_api_version:
            Telnyx::CallControlApplicationUpdateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallControlApplicationUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # A user-assigned name to help manage the application.
        application_name:,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # <code>Latency</code> directs Telnyx to route media through the site with the
        # lowest round-trip time to the user's connection. Telnyx calculates this time
        # using ICMP ping messages. This can be disabled by specifying a site to handle
        # all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this Call Control
        # Application.
        call_cost_in_webhooks: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Specifies whether calls to phone numbers associated with this connection should
        # hangup after timing out.
        first_command_timeout: nil,
        # Specifies how many seconds to wait before timing out a dial command.
        first_command_timeout_secs: nil,
        inbound: nil,
        outbound: nil,
        # When enabled, DTMF digits entered by users will be redacted in debug logs to
        # protect PII data entered through IVR interactions.
        redact_dtmf_debug_logging: nil,
        # Tags assigned to the Call Control Application.
        tags: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Return a list of call control applications.
      sig do
        params(
          filter: Telnyx::CallControlApplicationListParams::Filter::OrHash,
          page: Telnyx::CallControlApplicationListParams::Page::OrHash,
          sort: Telnyx::CallControlApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[Telnyx::CallControlApplication]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound.outbound_voice_profile_id],
        # filter[leg_id], filter[application_session_id], filter[connection_id],
        # filter[product], filter[failed], filter[from], filter[to], filter[name],
        # filter[type], filter[occurred_at][eq/gt/gte/lt/lte], filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes a call control application.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CallControlApplicationDeleteResponse)
      end
      def delete(
        # Identifies the resource.
        id,
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
