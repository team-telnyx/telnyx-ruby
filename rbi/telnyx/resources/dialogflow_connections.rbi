# typed: strong

module Telnyx
  module Resources
    class DialogflowConnections
      # Save Dialogflow Credentiails to Telnyx, so it can be used with other Telnyx
      # services.
      sig do
        params(
          connection_id: String,
          service_account: T::Hash[Symbol, T.anything],
          conversation_profile_id: String,
          dialogflow_api:
            Telnyx::DialogflowConnectionCreateParams::DialogflowAPI::OrSymbol,
          environment: String,
          location: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DialogflowConnectionCreateResponse)
      end
      def create(
        # Uniquely identifies a Telnyx application (Call Control).
        connection_id,
        # The JSON map to connect your Dialoglow account.
        service_account:,
        # The id of a configured conversation profile on your Dialogflow account. (If you
        # use Dialogflow CX, this param is required)
        conversation_profile_id: nil,
        # Determine which Dialogflow will be used.
        dialogflow_api: nil,
        # Which Dialogflow environment will be used.
        environment: nil,
        # The region of your agent is. (If you use Dialogflow CX, this param is required)
        location: nil,
        request_options: {}
      )
      end

      # Return details of the Dialogflow connection associated with the given
      # CallControl connection.
      sig do
        params(
          connection_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DialogflowConnectionRetrieveResponse)
      end
      def retrieve(
        # Uniquely identifies a Telnyx application (Call Control).
        connection_id,
        request_options: {}
      )
      end

      # Updates a stored Dialogflow Connection.
      sig do
        params(
          connection_id: String,
          service_account: T::Hash[Symbol, T.anything],
          conversation_profile_id: String,
          dialogflow_api:
            Telnyx::DialogflowConnectionUpdateParams::DialogflowAPI::OrSymbol,
          environment: String,
          location: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::DialogflowConnectionUpdateResponse)
      end
      def update(
        # Uniquely identifies a Telnyx application (Call Control).
        connection_id,
        # The JSON map to connect your Dialoglow account.
        service_account:,
        # The id of a configured conversation profile on your Dialogflow account. (If you
        # use Dialogflow CX, this param is required)
        conversation_profile_id: nil,
        # Determine which Dialogflow will be used.
        dialogflow_api: nil,
        # Which Dialogflow environment will be used.
        environment: nil,
        # The region of your agent is. (If you use Dialogflow CX, this param is required)
        location: nil,
        request_options: {}
      )
      end

      # Deletes a stored Dialogflow Connection.
      sig do
        params(
          connection_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Uniquely identifies a Telnyx application (Call Control).
        connection_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
