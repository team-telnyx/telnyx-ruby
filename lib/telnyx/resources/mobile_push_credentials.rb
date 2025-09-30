# frozen_string_literal: true

module Telnyx
  module Resources
    class MobilePushCredentials
      # Creates a new mobile push credential
      #
      # @overload create(alias_:, certificate:, private_key:, type:, project_account_json_file:, request_options: {})
      #
      # @param alias_ [String] Alias to uniquely identify the credential
      #
      # @param certificate [String] Certificate as received from APNs
      #
      # @param private_key [String] Corresponding private key to the certificate as received from APNs
      #
      # @param type [Symbol, Telnyx::Models::MobilePushCredentialCreateParams::Type] Type of mobile push credential. Should be <code>android</code> here
      #
      # @param project_account_json_file [Hash{Symbol=>Object}] Private key file in JSON format
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PushCredentialResponse]
      #
      # @see Telnyx::Models::MobilePushCredentialCreateParams
      def create(params)
        parsed, options = Telnyx::MobilePushCredentialCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "mobile_push_credentials",
          body: parsed,
          model: Telnyx::PushCredentialResponse,
          options: options
        )
      end

      # Retrieves mobile push credential based on the given `push_credential_id`
      #
      # @overload retrieve(push_credential_id, request_options: {})
      #
      # @param push_credential_id [String] The unique identifier of a mobile push credential
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PushCredentialResponse]
      #
      # @see Telnyx::Models::MobilePushCredentialRetrieveParams
      def retrieve(push_credential_id, params = {})
        @client.request(
          method: :get,
          path: ["mobile_push_credentials/%1$s", push_credential_id],
          model: Telnyx::PushCredentialResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MobilePushCredentialListParams} for more details.
      #
      # List mobile push credentials
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::MobilePushCredentialListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
      #
      # @param page [Telnyx::Models::MobilePushCredentialListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobilePushCredentialListResponse]
      #
      # @see Telnyx::Models::MobilePushCredentialListParams
      def list(params = {})
        parsed, options = Telnyx::MobilePushCredentialListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "mobile_push_credentials",
          query: parsed,
          model: Telnyx::Models::MobilePushCredentialListResponse,
          options: options
        )
      end

      # Deletes a mobile push credential based on the given `push_credential_id`
      #
      # @overload delete(push_credential_id, request_options: {})
      #
      # @param push_credential_id [String] The unique identifier of a mobile push credential
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::MobilePushCredentialDeleteParams
      def delete(push_credential_id, params = {})
        @client.request(
          method: :delete,
          path: ["mobile_push_credentials/%1$s", push_credential_id],
          model: NilClass,
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
