# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationProfiles
      # Create a notification profile.
      #
      # @overload create(name: nil, request_options: {})
      #
      # @param name [String] A human readable name.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationProfileCreateResponse]
      #
      # @see Telnyx::Models::NotificationProfileCreateParams
      def create(params = {})
        parsed, options = Telnyx::NotificationProfileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "notification_profiles",
          body: parsed,
          model: Telnyx::Models::NotificationProfileCreateResponse,
          options: options
        )
      end

      # Get a notification profile.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationProfileRetrieveResponse]
      #
      # @see Telnyx::Models::NotificationProfileRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["notification_profiles/%1$s", id],
          model: Telnyx::Models::NotificationProfileRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a notification profile.
      #
      # @overload update(notification_profile_id, name: nil, request_options: {})
      #
      # @param notification_profile_id [String] The id of the resource.
      #
      # @param name [String] A human readable name.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationProfileUpdateResponse]
      #
      # @see Telnyx::Models::NotificationProfileUpdateParams
      def update(notification_profile_id, params = {})
        parsed, options = Telnyx::NotificationProfileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["notification_profiles/%1$s", notification_profile_id],
          body: parsed,
          model: Telnyx::Models::NotificationProfileUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationProfileListParams} for more details.
      #
      # Returns a list of your notifications profiles.
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::NotificationProfileListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::NotificationProfile>]
      #
      # @see Telnyx::Models::NotificationProfileListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationProfileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_profiles",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::NotificationProfile,
          options: options
        )
      end

      # Delete a notification profile.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationProfileDeleteResponse]
      #
      # @see Telnyx::Models::NotificationProfileDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["notification_profiles/%1$s", id],
          model: Telnyx::Models::NotificationProfileDeleteResponse,
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
