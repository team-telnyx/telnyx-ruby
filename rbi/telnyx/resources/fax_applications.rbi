# typed: strong

module Telnyx
  module Resources
    class FaxApplications
      # Creates a new Fax Application based on the parameters sent in the request. The
      # application name and webhook URL are required. Once created, you can assign
      # phone numbers to your application using the `/phone_numbers` endpoint.
      sig do
        params(
          application_name: String,
          webhook_event_url: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          inbound: Telnyx::FaxApplicationCreateParams::Inbound::OrHash,
          outbound: Telnyx::FaxApplicationCreateParams::Outbound::OrHash,
          tags: T::Array[String],
          webhook_event_failover_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxApplicationCreateResponse)
      end
      def create(
        # A user-assigned name to help manage the application.
        application_name:,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        inbound: nil,
        outbound: nil,
        # Tags associated with the Fax Application.
        tags: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Return the details of an existing Fax Application inside the 'data' attribute of
      # the response.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxApplicationRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing Fax Application based on the parameters of the
      # request.
      sig do
        params(
          id: String,
          application_name: String,
          webhook_event_url: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          fax_email_recipient: T.nilable(String),
          inbound: Telnyx::FaxApplicationUpdateParams::Inbound::OrHash,
          outbound: Telnyx::FaxApplicationUpdateParams::Outbound::OrHash,
          tags: T::Array[String],
          webhook_event_failover_url: T.nilable(String),
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxApplicationUpdateResponse)
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
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Specifies an email address where faxes sent to this application will be
        # forwarded to (as pdf or tiff attachments)
        fax_email_recipient: nil,
        inbound: nil,
        outbound: nil,
        # Tags associated with the Fax Application.
        tags: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # This endpoint returns a list of your Fax Applications inside the 'data'
      # attribute of the response. You can adjust which applications are listed by using
      # filters. Fax Applications are used to configure how you send and receive faxes
      # using the Programmable Fax API with Telnyx.
      sig do
        params(
          filter: Telnyx::FaxApplicationListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::FaxApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::FaxApplication]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[application_name][contains], filter[outbound_voice_profile_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>application_name</code>: sorts the result by the
        #     <code>application_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-application_name</code>: sorts the result by the
        #     <code>application_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Permanently deletes a Fax Application. Deletion may be prevented if the
      # application is in use by phone numbers.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::FaxApplicationDeleteResponse)
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
