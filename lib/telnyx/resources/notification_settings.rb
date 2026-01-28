# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationSettings
      # Add a notification setting.
      #
      # @overload create(notification_channel_id: nil, notification_event_condition_id: nil, notification_profile_id: nil, parameters: nil, request_options: {})
      #
      # @param notification_channel_id [String] A UUID reference to the associated Notification Channel.
      #
      # @param notification_event_condition_id [String] A UUID reference to the associated Notification Event Condition.
      #
      # @param notification_profile_id [String] A UUID reference to the associated Notification Profile.
      #
      # @param parameters [Array<Telnyx::Models::NotificationSetting::Parameter>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationSettingCreateResponse]
      #
      # @see Telnyx::Models::NotificationSettingCreateParams
      def create(params = {})
        parsed, options = Telnyx::NotificationSettingCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "notification_settings",
          body: parsed,
          model: Telnyx::Models::NotificationSettingCreateResponse,
          options: options
        )
      end

      # Get a notification setting.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationSettingRetrieveResponse]
      #
      # @see Telnyx::Models::NotificationSettingRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["notification_settings/%1$s", id],
          model: Telnyx::Models::NotificationSettingRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationSettingListParams} for more details.
      #
      # List notification settings.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NotificationSettingListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[associated\_
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NotificationSetting>]
      #
      # @see Telnyx::Models::NotificationSettingListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationSettingListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_settings",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::NotificationSetting,
          options: options
        )
      end

      # Delete a notification setting.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationSettingDeleteResponse]
      #
      # @see Telnyx::Models::NotificationSettingDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["notification_settings/%1$s", id],
          model: Telnyx::Models::NotificationSettingDeleteResponse,
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
