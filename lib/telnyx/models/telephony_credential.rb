# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#list
    class TelephonyCredential < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   ISO-8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute expired
      #   Defaults to false
      #
      #   @return [Boolean, nil]
      optional :expired, Telnyx::Internal::Type::Boolean

      # @!attribute expires_at
      #   ISO-8601 formatted date indicating when the resource will expire.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute resource_id
      #   Identifies the resource this credential is associated with.
      #
      #   @return [String, nil]
      optional :resource_id, String

      # @!attribute sip_password
      #   The randomly generated SIP password for the credential.
      #
      #   @return [String, nil]
      optional :sip_password, String

      # @!attribute sip_username
      #   The randomly generated SIP username for the credential.
      #
      #   @return [String, nil]
      optional :sip_username, String

      # @!attribute updated_at
      #   ISO-8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute user_id
      #   Identifies the user this credential is associated with.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!method initialize(id: nil, created_at: nil, expired: nil, expires_at: nil, name: nil, record_type: nil, resource_id: nil, sip_password: nil, sip_username: nil, updated_at: nil, user_id: nil)
      #   @param id [String] Identifies the resource.
      #
      #   @param created_at [String] ISO-8601 formatted date indicating when the resource was created.
      #
      #   @param expired [Boolean] Defaults to false
      #
      #   @param expires_at [String] ISO-8601 formatted date indicating when the resource will expire.
      #
      #   @param name [String]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param resource_id [String] Identifies the resource this credential is associated with.
      #
      #   @param sip_password [String] The randomly generated SIP password for the credential.
      #
      #   @param sip_username [String] The randomly generated SIP username for the credential.
      #
      #   @param updated_at [String] ISO-8601 formatted date indicating when the resource was updated.
      #
      #   @param user_id [String] Identifies the user this credential is associated with.
    end
  end
end
