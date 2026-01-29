# frozen_string_literal: true

module Telnyx
  module Resources
    class TelephonyCredentials
      # Create a credential.
      #
      # @overload create(connection_id:, expires_at: nil, name: nil, tag: nil, request_options: {})
      #
      # @param connection_id [String] Identifies the Credential Connection this credential is associated with.
      #
      # @param expires_at [String] ISO-8601 formatted date indicating when the credential will expire.
      #
      # @param name [String]
      #
      # @param tag [String] Tags a credential. A single tag can hold at maximum 1000 credentials.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelephonyCredentialCreateResponse]
      #
      # @see Telnyx::Models::TelephonyCredentialCreateParams
      def create(params)
        parsed, options = Telnyx::TelephonyCredentialCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "telephony_credentials",
          body: parsed,
          model: Telnyx::Models::TelephonyCredentialCreateResponse,
          options: options
        )
      end

      # Get the details of an existing On-demand Credential.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelephonyCredentialRetrieveResponse]
      #
      # @see Telnyx::Models::TelephonyCredentialRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["telephony_credentials/%1$s", id],
          model: Telnyx::Models::TelephonyCredentialRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update an existing credential.
      #
      # @overload update(id, connection_id: nil, expires_at: nil, name: nil, tag: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param connection_id [String] Identifies the Credential Connection this credential is associated with.
      #
      # @param expires_at [String] ISO-8601 formatted date indicating when the credential will expire.
      #
      # @param name [String]
      #
      # @param tag [String] Tags a credential. A single tag can hold at maximum 1000 credentials.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelephonyCredentialUpdateResponse]
      #
      # @see Telnyx::Models::TelephonyCredentialUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::TelephonyCredentialUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["telephony_credentials/%1$s", id],
          body: parsed,
          model: Telnyx::Models::TelephonyCredentialUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TelephonyCredentialListParams} for more details.
      #
      # List all On-demand Credentials.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::TelephonyCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[tag], filte
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::TelephonyCredential>]
      #
      # @see Telnyx::Models::TelephonyCredentialListParams
      def list(params = {})
        parsed, options = Telnyx::TelephonyCredentialListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "telephony_credentials",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::TelephonyCredential,
          options: options
        )
      end

      # Delete an existing credential.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TelephonyCredentialDeleteResponse]
      #
      # @see Telnyx::Models::TelephonyCredentialDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["telephony_credentials/%1$s", id],
          model: Telnyx::Models::TelephonyCredentialDeleteResponse,
          options: params[:request_options]
        )
      end

      # Create an Access Token (JWT) for the credential.
      #
      # @overload create_token(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [String]
      #
      # @see Telnyx::Models::TelephonyCredentialCreateTokenParams
      def create_token(id, params = {})
        @client.request(
          method: :post,
          path: ["telephony_credentials/%1$s/token", id],
          headers: {"accept" => "text/plain"},
          model: String,
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
