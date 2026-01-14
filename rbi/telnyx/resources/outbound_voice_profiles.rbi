# typed: strong

module Telnyx
  module Resources
    class OutboundVoiceProfiles
      # Create an outbound voice profile.
      sig do
        params(
          name: String,
          billing_group_id: T.nilable(String),
          call_recording: Telnyx::OutboundCallRecording::OrHash,
          calling_window:
            Telnyx::OutboundVoiceProfileCreateParams::CallingWindow::OrHash,
          concurrent_call_limit: T.nilable(Integer),
          daily_spend_limit: String,
          daily_spend_limit_enabled: T::Boolean,
          enabled: T::Boolean,
          max_destination_rate: Float,
          service_plan: Telnyx::ServicePlan::OrSymbol,
          tags: T::Array[String],
          traffic_type: Telnyx::TrafficType::OrSymbol,
          usage_payment_method: Telnyx::UsagePaymentMethod::OrSymbol,
          whitelisted_destinations: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OutboundVoiceProfileCreateResponse)
      end
      def create(
        # A user-supplied name to help with organization.
        name:,
        # The ID of the billing group associated with the outbound proflile. Defaults to
        # null (for no group assigned).
        billing_group_id: nil,
        call_recording: nil,
        # (BETA) Specifies the time window and call limits for calls made using this
        # outbound voice profile. Note that all times are UTC in 24-hour clock time.
        calling_window: nil,
        # Must be no more than your global concurrent call limit. Null means no limit.
        concurrent_call_limit: nil,
        # The maximum amount of usage charges, in USD, you want Telnyx to allow on this
        # outbound voice profile in a day before disallowing new calls.
        daily_spend_limit: nil,
        # Specifies whether to enforce the daily_spend_limit on this outbound voice
        # profile.
        daily_spend_limit_enabled: nil,
        # Specifies whether the outbound voice profile can be used. Disabled profiles will
        # result in outbound calls being blocked for the associated Connections.
        enabled: nil,
        # Maximum rate (price per minute) for a Destination to be allowed when making
        # outbound calls.
        max_destination_rate: nil,
        # Indicates the coverage of the termination regions.
        service_plan: nil,
        tags: nil,
        # Specifies the type of traffic allowed in this profile.
        traffic_type: nil,
        # Setting for how costs for outbound profile are calculated.
        usage_payment_method: nil,
        # The list of destinations you want to be able to call using this outbound voice
        # profile formatted in alpha2.
        whitelisted_destinations: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing outbound voice profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OutboundVoiceProfileRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Updates an existing outbound voice profile.
      sig do
        params(
          id: String,
          name: String,
          billing_group_id: T.nilable(String),
          call_recording: Telnyx::OutboundCallRecording::OrHash,
          calling_window:
            Telnyx::OutboundVoiceProfileUpdateParams::CallingWindow::OrHash,
          concurrent_call_limit: T.nilable(Integer),
          daily_spend_limit: String,
          daily_spend_limit_enabled: T::Boolean,
          enabled: T::Boolean,
          max_destination_rate: Float,
          service_plan: Telnyx::ServicePlan::OrSymbol,
          tags: T::Array[String],
          traffic_type: Telnyx::TrafficType::OrSymbol,
          usage_payment_method: Telnyx::UsagePaymentMethod::OrSymbol,
          whitelisted_destinations: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OutboundVoiceProfileUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        # A user-supplied name to help with organization.
        name:,
        # The ID of the billing group associated with the outbound proflile. Defaults to
        # null (for no group assigned).
        billing_group_id: nil,
        call_recording: nil,
        # (BETA) Specifies the time window and call limits for calls made using this
        # outbound voice profile.
        calling_window: nil,
        # Must be no more than your global concurrent call limit. Null means no limit.
        concurrent_call_limit: nil,
        # The maximum amount of usage charges, in USD, you want Telnyx to allow on this
        # outbound voice profile in a day before disallowing new calls.
        daily_spend_limit: nil,
        # Specifies whether to enforce the daily_spend_limit on this outbound voice
        # profile.
        daily_spend_limit_enabled: nil,
        # Specifies whether the outbound voice profile can be used. Disabled profiles will
        # result in outbound calls being blocked for the associated Connections.
        enabled: nil,
        # Maximum rate (price per minute) for a Destination to be allowed when making
        # outbound calls.
        max_destination_rate: nil,
        # Indicates the coverage of the termination regions.
        service_plan: nil,
        tags: nil,
        # Specifies the type of traffic allowed in this profile.
        traffic_type: nil,
        # Setting for how costs for outbound profile are calculated.
        usage_payment_method: nil,
        # The list of destinations you want to be able to call using this outbound voice
        # profile formatted in alpha2.
        whitelisted_destinations: nil,
        request_options: {}
      )
      end

      # Get all outbound voice profiles belonging to the user that match the given
      # filters.
      sig do
        params(
          filter: Telnyx::OutboundVoiceProfileListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::OutboundVoiceProfileListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::OutboundVoiceProfile]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[name][contains]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code>-</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>name</code>: sorts the result by the
        #     <code>name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-name</code>: sorts the result by the
        #     <code>name</code> field in descending order.
        #   </li>
        # </ul> <br/>
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an existing outbound voice profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::OutboundVoiceProfileDeleteResponse)
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
