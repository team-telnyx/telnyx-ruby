# typed: strong

module Telnyx
  module Resources
    class TexmlApplications
      # Creates a TeXML Application.
      sig do
        params(
          friendly_name: String,
          voice_url: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::TexmlApplicationCreateParams::Inbound::OrHash,
          outbound: Telnyx::TexmlApplicationCreateParams::Outbound::OrHash,
          status_callback: String,
          status_callback_method:
            Telnyx::TexmlApplicationCreateParams::StatusCallbackMethod::OrSymbol,
          tags: T::Array[String],
          voice_fallback_url: String,
          voice_method:
            Telnyx::TexmlApplicationCreateParams::VoiceMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlApplicationCreateResponse)
      end
      def create(
        # A user-assigned name to help manage the application.
        friendly_name:,
        # URL to which Telnyx will deliver your XML Translator webhooks.
        voice_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this TeXML Application.
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
        # URL for Telnyx to send requests to containing information about call progress
        # events.
        status_callback: nil,
        # HTTP request method Telnyx should use when requesting the status_callback URL.
        status_callback_method: nil,
        # Tags associated with the Texml Application.
        tags: nil,
        # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
        # response from your voice_url.
        voice_fallback_url: nil,
        # HTTP request method Telnyx will use to interact with your XML Translator
        # webhooks. Either 'get' or 'post'.
        voice_method: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing TeXML Application.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlApplicationRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing TeXML Application.
      sig do
        params(
          id: String,
          friendly_name: String,
          voice_url: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::TexmlApplicationUpdateParams::Inbound::OrHash,
          outbound: Telnyx::TexmlApplicationUpdateParams::Outbound::OrHash,
          status_callback: String,
          status_callback_method:
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::OrSymbol,
          tags: T::Array[String],
          voice_fallback_url: String,
          voice_method:
            Telnyx::TexmlApplicationUpdateParams::VoiceMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlApplicationUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # A user-assigned name to help manage the application.
        friendly_name:,
        # URL to which Telnyx will deliver your XML Translator webhooks.
        voice_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this TeXML Application.
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
        # URL for Telnyx to send requests to containing information about call progress
        # events.
        status_callback: nil,
        # HTTP request method Telnyx should use when requesting the status_callback URL.
        status_callback_method: nil,
        # Tags associated with the Texml Application.
        tags: nil,
        # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
        # response from your voice_url.
        voice_fallback_url: nil,
        # HTTP request method Telnyx will use to interact with your XML Translator
        # webhooks. Either 'get' or 'post'.
        voice_method: nil,
        request_options: {}
      )
      end

      # Returns a list of your TeXML Applications.
      sig do
        params(
          filter: Telnyx::TexmlApplicationListParams::Filter::OrHash,
          page: Telnyx::TexmlApplicationListParams::Page::OrHash,
          sort: Telnyx::TexmlApplicationListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultPagination[Telnyx::TexmlApplication])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[outbound_voice_profile_id], filter[friendly_name]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>friendly_name</code>: sorts the result by the
        #     <code>friendly_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-friendly_name</code>: sorts the result by the
        #     <code>friendly_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes a TeXML Application.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TexmlApplicationDeleteResponse)
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
