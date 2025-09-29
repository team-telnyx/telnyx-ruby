# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DialogflowConnections#retrieve
    class DialogflowConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DialogflowConnectionRetrieveResponse::Data]
      required :data, -> { Telnyx::Models::DialogflowConnectionRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::DialogflowConnectionRetrieveResponse::Data]

      # @see Telnyx::Models::DialogflowConnectionRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute connection_id
        #   Uniquely identifies a Telnyx application (Call Control).
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute conversation_profile_id
        #   The id of a configured conversation profile on your Dialogflow account. (If you
        #   use Dialogflow CX, this param is required)
        #
        #   @return [String, nil]
        optional :conversation_profile_id, String

        # @!attribute environment
        #   Which Dialogflow environment will be used.
        #
        #   @return [String, nil]
        optional :environment, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute service_account
        #   The JSON map to connect your Dialoglow account.
        #
        #   @return [String, nil]
        optional :service_account, String

        # @!method initialize(connection_id: nil, conversation_profile_id: nil, environment: nil, record_type: nil, service_account: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DialogflowConnectionRetrieveResponse::Data} for more details.
        #
        #   @param connection_id [String] Uniquely identifies a Telnyx application (Call Control).
        #
        #   @param conversation_profile_id [String] The id of a configured conversation profile on your Dialogflow account. (If you
        #
        #   @param environment [String] Which Dialogflow environment will be used.
        #
        #   @param record_type [String]
        #
        #   @param service_account [String] The JSON map to connect your Dialoglow account.
      end
    end
  end
end
