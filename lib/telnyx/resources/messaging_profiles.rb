# frozen_string_literal: true

module Telnyx
  module Resources
    class MessagingProfiles
      # @return [Telnyx::Resources::MessagingProfiles::AutorespConfigs]
      attr_reader :autoresp_configs

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingProfileCreateParams} for more details.
      #
      # Create a messaging profile
      #
      # @overload create(name:, whitelisted_destinations:, alpha_sender: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, enabled: nil, mms_fall_back_to_sms: nil, mms_transcoding: nil, number_pool_settings: nil, url_shortener_settings: nil, webhook_api_version: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #
      # @param name [String] A user friendly name for the messaging profile.
      #
      # @param whitelisted_destinations [Array<String>] Destinations to which the messaging profile is allowed to send. The elements in
      #
      # @param alpha_sender [String, nil] The alphanumeric sender ID to use when sending to destinations that require an a
      #
      # @param daily_spend_limit [String] The maximum amount of money (in USD) that can be spent by this profile before mi
      #
      # @param daily_spend_limit_enabled [Boolean] Whether to enforce the value configured by `daily_spend_limit`.
      #
      # @param enabled [Boolean] Specifies whether the messaging profile is enabled or not.
      #
      # @param mms_fall_back_to_sms [Boolean] enables SMS fallback for MMS messages.
      #
      # @param mms_transcoding [Boolean] enables automated resizing of MMS media.
      #
      # @param number_pool_settings [Telnyx::Models::NumberPoolSettings, nil] Number Pool allows you to send messages from a pool of numbers of different type
      #
      # @param url_shortener_settings [Telnyx::Models::URLShortenerSettings, nil] The URL shortener feature allows automatic replacement of URLs that were generat
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::MessagingProfileCreateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1, v2, or a legacy 201
      #
      # @param webhook_failover_url [String, nil] The failover URL where webhooks related to this messaging profile will be sent i
      #
      # @param webhook_url [String, nil] The URL where webhooks related to this messaging profile will be sent.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileCreateResponse]
      #
      # @see Telnyx::Models::MessagingProfileCreateParams
      def create(params)
        parsed, options = Telnyx::MessagingProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "messaging_profiles",
          body: parsed,
          model: Telnyx::Models::MessagingProfileCreateResponse,
          options: options
        )
      end

      # Retrieve a messaging profile
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the messaging profile to retrieve
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileRetrieveResponse]
      #
      # @see Telnyx::Models::MessagingProfileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["messaging_profiles/%1$s", id],
          model: Telnyx::Models::MessagingProfileRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingProfileUpdateParams} for more details.
      #
      # Update a messaging profile
      #
      # @overload update(id, alpha_sender: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, enabled: nil, mms_fall_back_to_sms: nil, mms_transcoding: nil, name: nil, number_pool_settings: nil, url_shortener_settings: nil, v1_secret: nil, webhook_api_version: nil, webhook_failover_url: nil, webhook_url: nil, whitelisted_destinations: nil, request_options: {})
      #
      # @param id [String] The id of the messaging profile to retrieve
      #
      # @param alpha_sender [String, nil] The alphanumeric sender ID to use when sending to destinations that require an a
      #
      # @param daily_spend_limit [String] The maximum amount of money (in USD) that can be spent by this profile before mi
      #
      # @param daily_spend_limit_enabled [Boolean] Whether to enforce the value configured by `daily_spend_limit`.
      #
      # @param enabled [Boolean] Specifies whether the messaging profile is enabled or not.
      #
      # @param mms_fall_back_to_sms [Boolean] enables SMS fallback for MMS messages.
      #
      # @param mms_transcoding [Boolean] enables automated resizing of MMS media.
      #
      # @param name [String] A user friendly name for the messaging profile.
      #
      # @param number_pool_settings [Telnyx::Models::NumberPoolSettings, nil] Number Pool allows you to send messages from a pool of numbers of different type
      #
      # @param url_shortener_settings [Telnyx::Models::URLShortenerSettings, nil] The URL shortener feature allows automatic replacement of URLs that were generat
      #
      # @param v1_secret [String] Secret used to authenticate with v1 endpoints.
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::MessagingProfileUpdateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1, v2, or a legacy 201
      #
      # @param webhook_failover_url [String, nil] The failover URL where webhooks related to this messaging profile will be sent i
      #
      # @param webhook_url [String, nil] The URL where webhooks related to this messaging profile will be sent.
      #
      # @param whitelisted_destinations [Array<String>] Destinations to which the messaging profile is allowed to send. The elements in
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileUpdateResponse]
      #
      # @see Telnyx::Models::MessagingProfileUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::MessagingProfileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["messaging_profiles/%1$s", id],
          body: parsed,
          model: Telnyx::Models::MessagingProfileUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingProfileListParams} for more details.
      #
      # List messaging profiles
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::MessagingProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      # @param page [Telnyx::Models::MessagingProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileListResponse]
      #
      # @see Telnyx::Models::MessagingProfileListParams
      def list(params = {})
        parsed, options = Telnyx::MessagingProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "messaging_profiles",
          query: parsed,
          model: Telnyx::Models::MessagingProfileListResponse,
          options: options
        )
      end

      # Delete a messaging profile
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the messaging profile to retrieve
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileDeleteResponse]
      #
      # @see Telnyx::Models::MessagingProfileDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["messaging_profiles/%1$s", id],
          model: Telnyx::Models::MessagingProfileDeleteResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingProfileListPhoneNumbersParams} for more details.
      #
      # List phone numbers associated with a messaging profile
      #
      # @overload list_phone_numbers(id, page: nil, request_options: {})
      #
      # @param id [String] The id of the messaging profile to retrieve
      #
      # @param page [Telnyx::Models::MessagingProfileListPhoneNumbersParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileListPhoneNumbersResponse]
      #
      # @see Telnyx::Models::MessagingProfileListPhoneNumbersParams
      def list_phone_numbers(id, params = {})
        parsed, options = Telnyx::MessagingProfileListPhoneNumbersParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["messaging_profiles/%1$s/phone_numbers", id],
          query: parsed,
          model: Telnyx::Models::MessagingProfileListPhoneNumbersResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MessagingProfileListShortCodesParams} for more details.
      #
      # List short codes associated with a messaging profile
      #
      # @overload list_short_codes(id, page: nil, request_options: {})
      #
      # @param id [String] The id of the messaging profile to retrieve
      #
      # @param page [Telnyx::Models::MessagingProfileListShortCodesParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MessagingProfileListShortCodesResponse]
      #
      # @see Telnyx::Models::MessagingProfileListShortCodesParams
      def list_short_codes(id, params = {})
        parsed, options = Telnyx::MessagingProfileListShortCodesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["messaging_profiles/%1$s/short_codes", id],
          query: parsed,
          model: Telnyx::Models::MessagingProfileListShortCodesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @autoresp_configs = Telnyx::Resources::MessagingProfiles::AutorespConfigs.new(client: client)
      end
    end
  end
end
