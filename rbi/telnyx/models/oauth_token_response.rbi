# typed: strong

module Telnyx
  module Models
    class OAuthTokenResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::OAuthTokenResponse, Telnyx::Internal::AnyHash)
        end

      # The access token
      sig { returns(String) }
      attr_accessor :access_token

      # Token lifetime in seconds
      sig { returns(Integer) }
      attr_accessor :expires_in

      # Token type
      sig do
        returns(Telnyx::Models::OAuthTokenResponse::TokenType::TaggedSymbol)
      end
      attr_accessor :token_type

      # Refresh token (if applicable)
      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      # Space-separated list of granted scopes
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      sig do
        params(
          access_token: String,
          expires_in: Integer,
          token_type: Telnyx::Models::OAuthTokenResponse::TokenType::OrSymbol,
          refresh_token: String,
          scope: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The access token
        access_token:,
        # Token lifetime in seconds
        expires_in:,
        # Token type
        token_type:,
        # Refresh token (if applicable)
        refresh_token: nil,
        # Space-separated list of granted scopes
        scope: nil
      )
      end

      sig do
        override.returns(
          {
            access_token: String,
            expires_in: Integer,
            token_type:
              Telnyx::Models::OAuthTokenResponse::TokenType::TaggedSymbol,
            refresh_token: String,
            scope: String
          }
        )
      end
      def to_hash
      end

      # Token type
      module TokenType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::OAuthTokenResponse::TokenType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BEARER =
          T.let(
            :Bearer,
            Telnyx::Models::OAuthTokenResponse::TokenType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::OAuthTokenResponse::TokenType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
