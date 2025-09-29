# frozen_string_literal: true

module Telnyx
  module Resources
    class CustomStorageCredentials
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CustomStorageCredentialCreateParams} for more details.
      #
      # Creates a custom storage credentials configuration.
      #
      # @overload create(connection_id, backend:, configuration:, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #
      # @param backend [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      #
      # @param configuration [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::AzureConfigurationData]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomStorageCredentialCreateResponse]
      #
      # @see Telnyx::Models::CustomStorageCredentialCreateParams
      def create(connection_id, params)
        parsed, options = Telnyx::CustomStorageCredentialCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["custom_storage_credentials/%1$s", connection_id],
          body: parsed,
          model: Telnyx::Models::CustomStorageCredentialCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CustomStorageCredentialRetrieveParams} for more details.
      #
      # Returns the information about custom storage credentials.
      #
      # @overload retrieve(connection_id, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomStorageCredentialRetrieveResponse]
      #
      # @see Telnyx::Models::CustomStorageCredentialRetrieveParams
      def retrieve(connection_id, params = {})
        @client.request(
          method: :get,
          path: ["custom_storage_credentials/%1$s", connection_id],
          model: Telnyx::Models::CustomStorageCredentialRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CustomStorageCredentialUpdateParams} for more details.
      #
      # Updates a stored custom credentials configuration.
      #
      # @overload update(connection_id, backend:, configuration:, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #
      # @param backend [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      #
      # @param configuration [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::AzureConfigurationData]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CustomStorageCredentialUpdateResponse]
      #
      # @see Telnyx::Models::CustomStorageCredentialUpdateParams
      def update(connection_id, params)
        parsed, options = Telnyx::CustomStorageCredentialUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["custom_storage_credentials/%1$s", connection_id],
          body: parsed,
          model: Telnyx::Models::CustomStorageCredentialUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CustomStorageCredentialDeleteParams} for more details.
      #
      # Deletes a stored custom credentials configuration.
      #
      # @overload delete(connection_id, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::CustomStorageCredentialDeleteParams
      def delete(connection_id, params = {})
        @client.request(
          method: :delete,
          path: ["custom_storage_credentials/%1$s", connection_id],
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
