# typed: strong

module Telnyx
  module Models
    class AuthenticationProviderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AuthenticationProviderUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The active status of the authentication provider
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # The name associated with the authentication provider.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The settings associated with the authentication provider.
      sig { returns(T.nilable(Telnyx::Settings)) }
      attr_reader :settings

      sig { params(settings: Telnyx::Settings::OrHash).void }
      attr_writer :settings

      # The URL for the identity provider metadata file to populate the settings
      # automatically. If the settings attribute is provided, that will be used instead.
      sig { returns(T.nilable(String)) }
      attr_reader :settings_url

      sig { params(settings_url: String).void }
      attr_writer :settings_url

      # The short name associated with the authentication provider. This must be unique
      # and URL-friendly, as it's going to be part of the login URL.
      sig { returns(T.nilable(String)) }
      attr_reader :short_name

      sig { params(short_name: String).void }
      attr_writer :short_name

      sig do
        params(
          active: T::Boolean,
          name: String,
          settings: Telnyx::Settings::OrHash,
          settings_url: String,
          short_name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The active status of the authentication provider
        active: nil,
        # The name associated with the authentication provider.
        name: nil,
        # The settings associated with the authentication provider.
        settings: nil,
        # The URL for the identity provider metadata file to populate the settings
        # automatically. If the settings attribute is provided, that will be used instead.
        settings_url: nil,
        # The short name associated with the authentication provider. This must be unique
        # and URL-friendly, as it's going to be part of the login URL.
        short_name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            name: String,
            settings: Telnyx::Settings,
            settings_url: String,
            short_name: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
