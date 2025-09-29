# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuthenticationProviders#create
    class AuthenticationProviderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   The name associated with the authentication provider.
      #
      #   @return [String]
      required :name, String

      # @!attribute settings
      #   The settings associated with the authentication provider.
      #
      #   @return [Telnyx::Models::Settings]
      required :settings, -> { Telnyx::Settings }

      # @!attribute short_name
      #   The short name associated with the authentication provider. This must be unique
      #   and URL-friendly, as it's going to be part of the login URL.
      #
      #   @return [String]
      required :short_name, String

      # @!attribute active
      #   The active status of the authentication provider
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute settings_url
      #   The URL for the identity provider metadata file to populate the settings
      #   automatically. If the settings attribute is provided, that will be used instead.
      #
      #   @return [String, nil]
      optional :settings_url, String

      # @!method initialize(name:, settings:, short_name:, active: nil, settings_url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AuthenticationProviderCreateParams} for more details.
      #
      #   @param name [String] The name associated with the authentication provider.
      #
      #   @param settings [Telnyx::Models::Settings] The settings associated with the authentication provider.
      #
      #   @param short_name [String] The short name associated with the authentication provider. This must be unique
      #
      #   @param active [Boolean] The active status of the authentication provider
      #
      #   @param settings_url [String] The URL for the identity provider metadata file to populate the settings automat
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
