# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#list
    class PushCredential < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of a push credential
      #
      #   @return [String]
      required :id, String

      # @!attribute alias_
      #   Alias to uniquely identify a credential
      #
      #   @return [String]
      required :alias_, String, api_name: :alias

      # @!attribute certificate
      #   Apple certificate for sending push notifications. For iOS only
      #
      #   @return [String]
      required :certificate, String

      # @!attribute created_at
      #   ISO 8601 timestamp when the room was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute private_key
      #   Apple private key for a given certificate for sending push notifications. For
      #   iOS only
      #
      #   @return [String]
      required :private_key, String

      # @!attribute project_account_json_file
      #   Google server key for sending push notifications. For Android only
      #
      #   @return [Hash{Symbol=>Object}]
      required :project_account_json_file, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute type
      #   Type of mobile push credential. Either <code>ios</code> or <code>android</code>
      #
      #   @return [String]
      required :type, String

      # @!attribute updated_at
      #   ISO 8601 timestamp when the room was updated.
      #
      #   @return [Time]
      required :updated_at, Time

      response_only do
        # @!attribute record_type
        #
        #   @return [String]
        required :record_type, String
      end

      # @!method initialize(id:, alias_:, certificate:, created_at:, private_key:, project_account_json_file:, record_type:, type:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PushCredential} for more details.
      #
      #   @param id [String] Unique identifier of a push credential
      #
      #   @param alias_ [String] Alias to uniquely identify a credential
      #
      #   @param certificate [String] Apple certificate for sending push notifications. For iOS only
      #
      #   @param created_at [Time] ISO 8601 timestamp when the room was created
      #
      #   @param private_key [String] Apple private key for a given certificate for sending push notifications. For iO
      #
      #   @param project_account_json_file [Hash{Symbol=>Object}] Google server key for sending push notifications. For Android only
      #
      #   @param record_type [String]
      #
      #   @param type [String] Type of mobile push credential. Either <code>ios</code> or <code>android</code>
      #
      #   @param updated_at [Time] ISO 8601 timestamp when the room was updated.
    end
  end
end
