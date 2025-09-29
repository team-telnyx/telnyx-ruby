# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthClients#list
    class OAuthClientListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_allowed_grant_types_contains
      #   Filter by allowed grant type
      #
      #   @return [Symbol, Telnyx::Models::OAuthClientListParams::FilterAllowedGrantTypesContains, nil]
      optional :filter_allowed_grant_types_contains,
               enum: -> { Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains }

      # @!attribute filter_client_id
      #   Filter by client ID
      #
      #   @return [String, nil]
      optional :filter_client_id, String

      # @!attribute filter_client_type
      #   Filter by client type
      #
      #   @return [Symbol, Telnyx::Models::OAuthClientListParams::FilterClientType, nil]
      optional :filter_client_type, enum: -> { Telnyx::OAuthClientListParams::FilterClientType }

      # @!attribute filter_name
      #   Filter by exact client name
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_name_contains
      #   Filter by client name containing text
      #
      #   @return [String, nil]
      optional :filter_name_contains, String

      # @!attribute filter_verified
      #   Filter by verification status
      #
      #   @return [Boolean, nil]
      optional :filter_verified, Telnyx::Internal::Type::Boolean

      # @!attribute page_number
      #   Page number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_allowed_grant_types_contains: nil, filter_client_id: nil, filter_client_type: nil, filter_name: nil, filter_name_contains: nil, filter_verified: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_allowed_grant_types_contains [Symbol, Telnyx::Models::OAuthClientListParams::FilterAllowedGrantTypesContains] Filter by allowed grant type
      #
      #   @param filter_client_id [String] Filter by client ID
      #
      #   @param filter_client_type [Symbol, Telnyx::Models::OAuthClientListParams::FilterClientType] Filter by client type
      #
      #   @param filter_name [String] Filter by exact client name
      #
      #   @param filter_name_contains [String] Filter by client name containing text
      #
      #   @param filter_verified [Boolean] Filter by verification status
      #
      #   @param page_number [Integer] Page number
      #
      #   @param page_size [Integer] Number of results per page
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by allowed grant type
      module FilterAllowedGrantTypesContains
        extend Telnyx::Internal::Type::Enum

        CLIENT_CREDENTIALS = :client_credentials
        AUTHORIZATION_CODE = :authorization_code
        REFRESH_TOKEN = :refresh_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by client type
      module FilterClientType
        extend Telnyx::Internal::Type::Enum

        CONFIDENTIAL = :confidential
        PUBLIC = :public

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
