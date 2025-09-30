# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomStorageCredentials#retrieve
    class CustomStorageCredentialRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute connection_id
      #   Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #   resource.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute data
      #
      #   @return [Telnyx::Models::CustomStorageConfiguration]
      required :data, -> { Telnyx::CustomStorageConfiguration }

      # @!attribute record_type
      #   Identifies record type.
      #
      #   @return [Symbol, Telnyx::Models::CustomStorageCredentialRetrieveResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::CustomStorageCredentialRetrieveResponse::RecordType }

      # @!method initialize(connection_id:, data:, record_type:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CustomStorageCredentialRetrieveResponse} for more details.
      #
      #   @param connection_id [String] Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      #
      #   @param data [Telnyx::Models::CustomStorageConfiguration]
      #
      #   @param record_type [Symbol, Telnyx::Models::CustomStorageCredentialRetrieveResponse::RecordType] Identifies record type.

      # Identifies record type.
      #
      # @see Telnyx::Models::CustomStorageCredentialRetrieveResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CUSTOM_STORAGE_CREDENTIALS = :custom_storage_credentials

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
