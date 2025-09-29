# typed: strong

module Telnyx
  module Models
    class OAuthClientListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthClientListParams, Telnyx::Internal::AnyHash)
        end

      # Filter by allowed grant type
      sig do
        returns(
          T.nilable(
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::OrSymbol
          )
        )
      end
      attr_reader :filter_allowed_grant_types_contains

      sig do
        params(
          filter_allowed_grant_types_contains:
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::OrSymbol
        ).void
      end
      attr_writer :filter_allowed_grant_types_contains

      # Filter by client ID
      sig { returns(T.nilable(String)) }
      attr_reader :filter_client_id

      sig { params(filter_client_id: String).void }
      attr_writer :filter_client_id

      # Filter by client type
      sig do
        returns(
          T.nilable(Telnyx::OAuthClientListParams::FilterClientType::OrSymbol)
        )
      end
      attr_reader :filter_client_type

      sig do
        params(
          filter_client_type:
            Telnyx::OAuthClientListParams::FilterClientType::OrSymbol
        ).void
      end
      attr_writer :filter_client_type

      # Filter by exact client name
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # Filter by client name containing text
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name_contains

      sig { params(filter_name_contains: String).void }
      attr_writer :filter_name_contains

      # Filter by verification status
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :filter_verified

      sig { params(filter_verified: T::Boolean).void }
      attr_writer :filter_verified

      # Page number
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_allowed_grant_types_contains:
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::OrSymbol,
          filter_client_id: String,
          filter_client_type:
            Telnyx::OAuthClientListParams::FilterClientType::OrSymbol,
          filter_name: String,
          filter_name_contains: String,
          filter_verified: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by allowed grant type
        filter_allowed_grant_types_contains: nil,
        # Filter by client ID
        filter_client_id: nil,
        # Filter by client type
        filter_client_type: nil,
        # Filter by exact client name
        filter_name: nil,
        # Filter by client name containing text
        filter_name_contains: nil,
        # Filter by verification status
        filter_verified: nil,
        # Page number
        page_number: nil,
        # Number of results per page
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_allowed_grant_types_contains:
              Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::OrSymbol,
            filter_client_id: String,
            filter_client_type:
              Telnyx::OAuthClientListParams::FilterClientType::OrSymbol,
            filter_name: String,
            filter_name_contains: String,
            filter_verified: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by allowed grant type
      module FilterAllowedGrantTypesContains
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLIENT_CREDENTIALS =
          T.let(
            :client_credentials,
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::TaggedSymbol
          )
        AUTHORIZATION_CODE =
          T.let(
            :authorization_code,
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::TaggedSymbol
          )
        REFRESH_TOKEN =
          T.let(
            :refresh_token,
            Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthClientListParams::FilterAllowedGrantTypesContains::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter by client type
      module FilterClientType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OAuthClientListParams::FilterClientType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONFIDENTIAL =
          T.let(
            :confidential,
            Telnyx::OAuthClientListParams::FilterClientType::TaggedSymbol
          )
        PUBLIC =
          T.let(
            :public,
            Telnyx::OAuthClientListParams::FilterClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthClientListParams::FilterClientType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
