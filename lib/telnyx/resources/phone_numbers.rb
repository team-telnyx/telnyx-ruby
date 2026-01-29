# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      # @return [Telnyx::Resources::PhoneNumbers::Actions]
      attr_reader :actions

      # @return [Telnyx::Resources::PhoneNumbers::CsvDownloads]
      attr_reader :csv_downloads

      # @return [Telnyx::Resources::PhoneNumbers::Jobs]
      attr_reader :jobs

      # @return [Telnyx::Resources::PhoneNumbers::Messaging]
      attr_reader :messaging

      # @return [Telnyx::Resources::PhoneNumbers::Voice]
      attr_reader :voice

      # @return [Telnyx::Resources::PhoneNumbers::Voicemail]
      attr_reader :voicemail

      # Retrieve a phone number
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberRetrieveResponse]
      #
      # @see Telnyx::Models::PhoneNumberRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["phone_numbers/%1$s", id],
          model: Telnyx::Models::PhoneNumberRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumberUpdateParams} for more details.
      #
      # Update a phone number
      #
      # @overload update(phone_number_id, billing_group_id: nil, connection_id: nil, customer_reference: nil, external_pin: nil, hd_voice_enabled: nil, tags: nil, request_options: {})
      #
      # @param phone_number_id [String] Identifies the resource.
      #
      # @param billing_group_id [String] Identifies the billing group associated with the phone number.
      #
      # @param connection_id [String] Identifies the connection associated with the phone number.
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param external_pin [String] If someone attempts to port your phone number away from Telnyx and your phone nu
      #
      # @param hd_voice_enabled [Boolean] Indicates whether HD voice is enabled for this number.
      #
      # @param tags [Array<String>] A list of user-assigned tags to help organize phone numbers.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberUpdateResponse]
      #
      # @see Telnyx::Models::PhoneNumberUpdateParams
      def update(phone_number_id, params = {})
        parsed, options = Telnyx::PhoneNumberUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["phone_numbers/%1$s", phone_number_id],
          body: parsed,
          model: Telnyx::Models::PhoneNumberUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumberListParams} for more details.
      #
      # List phone numbers
      #
      # @overload list(filter: nil, handle_messaging_profile_error: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PhoneNumberListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      # @param handle_messaging_profile_error [Symbol, Telnyx::Models::PhoneNumberListParams::HandleMessagingProfileError] Although it is an infrequent occurrence, due to the highly distributed nature of
      #
      # @param page [Telnyx::Models::PhoneNumberListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::PhoneNumberListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::PhoneNumberDetailed>]
      #
      # @see Telnyx::Models::PhoneNumberListParams
      def list(params = {})
        parsed, options = Telnyx::PhoneNumberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "phone_numbers",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::PhoneNumberDetailed,
          options: options
        )
      end

      # Delete a phone number
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PhoneNumberDeleteResponse]
      #
      # @see Telnyx::Models::PhoneNumberDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["phone_numbers/%1$s", id],
          model: Telnyx::Models::PhoneNumberDeleteResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PhoneNumberSlimListParams} for more details.
      #
      # List phone numbers, This endpoint is a lighter version of the /phone_numbers
      # endpoint having higher performance and rate limit.
      #
      # @overload slim_list(filter: nil, include_connection: nil, include_tags: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PhoneNumberSlimListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      # @param include_connection [Boolean] Include the connection associated with the phone number.
      #
      # @param include_tags [Boolean] Include the tags associated with the phone number.
      #
      # @param page [Telnyx::Models::PhoneNumberSlimListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::PhoneNumberSlimListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::PhoneNumberSlimListResponse>]
      #
      # @see Telnyx::Models::PhoneNumberSlimListParams
      def slim_list(params = {})
        parsed, options = Telnyx::PhoneNumberSlimListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "phone_numbers/slim",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::Models::PhoneNumberSlimListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::PhoneNumbers::Actions.new(client: client)
        @csv_downloads = Telnyx::Resources::PhoneNumbers::CsvDownloads.new(client: client)
        @jobs = Telnyx::Resources::PhoneNumbers::Jobs.new(client: client)
        @messaging = Telnyx::Resources::PhoneNumbers::Messaging.new(client: client)
        @voice = Telnyx::Resources::PhoneNumbers::Voice.new(client: client)
        @voicemail = Telnyx::Resources::PhoneNumbers::Voicemail.new(client: client)
      end
    end
  end
end
