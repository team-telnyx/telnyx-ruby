# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TelephonyCredentials#create
    class TelephonyCredentialCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   Identifies the Credential Connection this credential is associated with.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute expires_at
      #   ISO-8601 formatted date indicating when the credential will expire.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute tag
      #   Tags a credential. A single tag can hold at maximum 1000 credentials.
      #
      #   @return [String, nil]
      optional :tag, String

      # @!method initialize(connection_id:, expires_at: nil, name: nil, tag: nil, request_options: {})
      #   @param connection_id [String] Identifies the Credential Connection this credential is associated with.
      #
      #   @param expires_at [String] ISO-8601 formatted date indicating when the credential will expire.
      #
      #   @param name [String]
      #
      #   @param tag [String] Tags a credential. A single tag can hold at maximum 1000 credentials.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
