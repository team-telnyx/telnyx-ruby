# frozen_string_literal: true

module Telnyx
  module Resources
    # Notification settings operations
    class NotificationProfiles
      # Creates a new notification profile, a named grouping used to organize
      # notification settings, and returns it.
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

      # Returns the details of a single notification profile by its identifier.
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

      # Updates the specified notification profile and returns the updated profile.
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

      # Returns a list of your notifications profiles.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::NotificationProfile>]
      #
      # @see Telnyx::Models::NotificationProfileListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationProfileListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "notification_profiles",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::NotificationProfile,
          options: options
        )
      end

      # Deletes the specified notification profile from your account.
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
