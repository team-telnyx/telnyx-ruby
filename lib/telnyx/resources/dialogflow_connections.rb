# frozen_string_literal: true

module Telnyx
  module Resources
    class DialogflowConnections
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DialogflowConnectionCreateParams} for more details.
      #
      # Save Dialogflow Credentiails to Telnyx, so it can be used with other Telnyx
      # services.
      #
      # @overload create(connection_id, service_account:, conversation_profile_id: nil, dialogflow_api: nil, environment: nil, location: nil, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control).
      #
      # @param service_account [Hash{Symbol=>Object}] The JSON map to connect your Dialoglow account.
      #
      # @param conversation_profile_id [String] The id of a configured conversation profile on your Dialogflow account. (If you
      #
      # @param dialogflow_api [Symbol, Telnyx::Models::DialogflowConnectionCreateParams::DialogflowAPI] Determine which Dialogflow will be used.
      #
      # @param environment [String] Which Dialogflow environment will be used.
      #
      # @param location [String] The region of your agent is. (If you use Dialogflow CX, this param is required)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DialogflowConnectionCreateResponse]
      #
      # @see Telnyx::Models::DialogflowConnectionCreateParams
      def create(connection_id, params)
        parsed, options = Telnyx::DialogflowConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["dialogflow_connections/%1$s", connection_id],
          body: parsed,
          model: Telnyx::Models::DialogflowConnectionCreateResponse,
          options: options
        )
      end

      # Return details of the Dialogflow connection associated with the given
      # CallControl connection.
      #
      # @overload retrieve(connection_id, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DialogflowConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::DialogflowConnectionRetrieveParams
      def retrieve(connection_id, params = {})
        @client.request(
          method: :get,
          path: ["dialogflow_connections/%1$s", connection_id],
          model: Telnyx::Models::DialogflowConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::DialogflowConnectionUpdateParams} for more details.
      #
      # Updates a stored Dialogflow Connection.
      #
      # @overload update(connection_id, service_account:, conversation_profile_id: nil, dialogflow_api: nil, environment: nil, location: nil, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control).
      #
      # @param service_account [Hash{Symbol=>Object}] The JSON map to connect your Dialoglow account.
      #
      # @param conversation_profile_id [String] The id of a configured conversation profile on your Dialogflow account. (If you
      #
      # @param dialogflow_api [Symbol, Telnyx::Models::DialogflowConnectionUpdateParams::DialogflowAPI] Determine which Dialogflow will be used.
      #
      # @param environment [String] Which Dialogflow environment will be used.
      #
      # @param location [String] The region of your agent is. (If you use Dialogflow CX, this param is required)
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::DialogflowConnectionUpdateResponse]
      #
      # @see Telnyx::Models::DialogflowConnectionUpdateParams
      def update(connection_id, params)
        parsed, options = Telnyx::DialogflowConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["dialogflow_connections/%1$s", connection_id],
          body: parsed,
          model: Telnyx::Models::DialogflowConnectionUpdateResponse,
          options: options
        )
      end

      # Deletes a stored Dialogflow Connection.
      #
      # @overload delete(connection_id, request_options: {})
      #
      # @param connection_id [String] Uniquely identifies a Telnyx application (Call Control).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::DialogflowConnectionDeleteParams
      def delete(connection_id, params = {})
        @client.request(
          method: :delete,
          path: ["dialogflow_connections/%1$s", connection_id],
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
