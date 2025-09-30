# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WellKnown#retrieve_protected_resource_metadata
    class WellKnownRetrieveProtectedResourceMetadataResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute authorization_servers
      #   List of authorization server URLs
      #
      #   @return [Array<String>, nil]
      optional :authorization_servers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute resource
      #   Protected resource URL
      #
      #   @return [String, nil]
      optional :resource, String

      # @!method initialize(authorization_servers: nil, resource: nil)
      #   @param authorization_servers [Array<String>] List of authorization server URLs
      #
      #   @param resource [String] Protected resource URL
    end
  end
end
