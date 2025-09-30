# frozen_string_literal: true

module Telnyx
  module Resources
    class OutboundVoiceProfiles
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::OutboundVoiceProfileCreateParams} for more details.
      #
      # Create an outbound voice profile.
      #
      # @overload create(name:, billing_group_id: nil, call_recording: nil, concurrent_call_limit: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, enabled: nil, max_destination_rate: nil, service_plan: nil, tags: nil, traffic_type: nil, usage_payment_method: nil, whitelisted_destinations: nil, request_options: {})
      #
      # @param name [String] A user-supplied name to help with organization.
      #
      # @param billing_group_id [String, nil] The ID of the billing group associated with the outbound proflile. Defaults to n
      #
      # @param call_recording [Telnyx::Models::OutboundCallRecording]
      #
      # @param concurrent_call_limit [Integer, nil] Must be no more than your global concurrent call limit. Null means no limit.
      #
      # @param daily_spend_limit [String] The maximum amount of usage charges, in USD, you want Telnyx to allow on this ou
      #
      # @param daily_spend_limit_enabled [Boolean] Specifies whether to enforce the daily_spend_limit on this outbound voice profil
      #
      # @param enabled [Boolean] Specifies whether the outbound voice profile can be used. Disabled profiles will
      #
      # @param max_destination_rate [Float] Maximum rate (price per minute) for a Destination to be allowed when making outb
      #
      # @param service_plan [Symbol, Telnyx::Models::ServicePlan] Indicates the coverage of the termination regions.
      #
      # @param tags [Array<String>]
      #
      # @param traffic_type [Symbol, Telnyx::Models::TrafficType] Specifies the type of traffic allowed in this profile.
      #
      # @param usage_payment_method [Symbol, Telnyx::Models::UsagePaymentMethod] Setting for how costs for outbound profile are calculated.
      #
      # @param whitelisted_destinations [Array<String>] The list of destinations you want to be able to call using this outbound voice p
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OutboundVoiceProfileCreateResponse]
      #
      # @see Telnyx::Models::OutboundVoiceProfileCreateParams
      def create(params)
        parsed, options = Telnyx::OutboundVoiceProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "outbound_voice_profiles",
          body: parsed,
          model: Telnyx::Models::OutboundVoiceProfileCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing outbound voice profile.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OutboundVoiceProfileRetrieveResponse]
      #
      # @see Telnyx::Models::OutboundVoiceProfileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["outbound_voice_profiles/%1$s", id],
          model: Telnyx::Models::OutboundVoiceProfileRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::OutboundVoiceProfileUpdateParams} for more details.
      #
      # Updates an existing outbound voice profile.
      #
      # @overload update(id, name:, billing_group_id: nil, call_recording: nil, concurrent_call_limit: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, enabled: nil, max_destination_rate: nil, service_plan: nil, tags: nil, traffic_type: nil, usage_payment_method: nil, whitelisted_destinations: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param name [String] A user-supplied name to help with organization.
      #
      # @param billing_group_id [String, nil] The ID of the billing group associated with the outbound proflile. Defaults to n
      #
      # @param call_recording [Telnyx::Models::OutboundCallRecording]
      #
      # @param concurrent_call_limit [Integer, nil] Must be no more than your global concurrent call limit. Null means no limit.
      #
      # @param daily_spend_limit [String] The maximum amount of usage charges, in USD, you want Telnyx to allow on this ou
      #
      # @param daily_spend_limit_enabled [Boolean] Specifies whether to enforce the daily_spend_limit on this outbound voice profil
      #
      # @param enabled [Boolean] Specifies whether the outbound voice profile can be used. Disabled profiles will
      #
      # @param max_destination_rate [Float] Maximum rate (price per minute) for a Destination to be allowed when making outb
      #
      # @param service_plan [Symbol, Telnyx::Models::ServicePlan] Indicates the coverage of the termination regions.
      #
      # @param tags [Array<String>]
      #
      # @param traffic_type [Symbol, Telnyx::Models::TrafficType] Specifies the type of traffic allowed in this profile.
      #
      # @param usage_payment_method [Symbol, Telnyx::Models::UsagePaymentMethod] Setting for how costs for outbound profile are calculated.
      #
      # @param whitelisted_destinations [Array<String>] The list of destinations you want to be able to call using this outbound voice p
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OutboundVoiceProfileUpdateResponse]
      #
      # @see Telnyx::Models::OutboundVoiceProfileUpdateParams
      def update(id, params)
        parsed, options = Telnyx::OutboundVoiceProfileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["outbound_voice_profiles/%1$s", id],
          body: parsed,
          model: Telnyx::Models::OutboundVoiceProfileUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::OutboundVoiceProfileListParams} for more details.
      #
      # Get all outbound voice profiles belonging to the user that match the given
      # filters.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::OutboundVoiceProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]conta
      #
      # @param page [Telnyx::Models::OutboundVoiceProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Symbol, Telnyx::Models::OutboundVoiceProfileListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OutboundVoiceProfileListResponse]
      #
      # @see Telnyx::Models::OutboundVoiceProfileListParams
      def list(params = {})
        parsed, options = Telnyx::OutboundVoiceProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "outbound_voice_profiles",
          query: parsed,
          model: Telnyx::Models::OutboundVoiceProfileListResponse,
          options: options
        )
      end

      # Deletes an existing outbound voice profile.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::OutboundVoiceProfileDeleteResponse]
      #
      # @see Telnyx::Models::OutboundVoiceProfileDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["outbound_voice_profiles/%1$s", id],
          model: Telnyx::Models::OutboundVoiceProfileDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
