# typed: strong

module Telnyx
  module Models
    class AuthenticationProviderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AuthenticationProviderCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The name associated with the authentication provider.
      sig { returns(String) }
      attr_accessor :name

      # The settings associated with the authentication provider.
      sig { returns(Telnyx::Settings) }
      attr_reader :settings

      sig { params(settings: Telnyx::Settings::OrHash).void }
      attr_writer :settings

      # The short name associated with the authentication provider. This must be unique
      # and URL-friendly, as it's going to be part of the login URL.
      sig { returns(String) }
      attr_accessor :short_name

      # The active status of the authentication provider
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # The URL for the identity provider metadata file to populate the settings
      # automatically. If the settings attribute is provided, that will be used instead.
      sig { returns(T.nilable(String)) }
      attr_reader :settings_url

      sig { params(settings_url: String).void }
      attr_writer :settings_url

      sig do
        params(
          name: String,
          settings: Telnyx::Settings::OrHash,
          short_name: String,
          active: T::Boolean,
          settings_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name associated with the authentication provider.
        name:,
        # The settings associated with the authentication provider.
        settings:,
        # The short name associated with the authentication provider. This must be unique
        # and URL-friendly, as it's going to be part of the login URL.
        short_name:,
        # The active status of the authentication provider
        active: nil,
        # The URL for the identity provider metadata file to populate the settings
        # automatically. If the settings attribute is provided, that will be used instead.
        settings_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            settings: Telnyx::Settings,
            short_name: String,
            active: T::Boolean,
            settings_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
