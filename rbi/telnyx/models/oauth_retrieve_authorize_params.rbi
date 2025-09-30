# typed: strong

module Telnyx
  module Models
    class OAuthRetrieveAuthorizeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::OAuthRetrieveAuthorizeParams, Telnyx::Internal::AnyHash)
        end

      # OAuth client identifier
      sig { returns(String) }
      attr_accessor :client_id

      # Redirect URI
      sig { returns(String) }
      attr_accessor :redirect_uri

      # OAuth response type
      sig do
        returns(Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::OrSymbol)
      end
      attr_accessor :response_type

      # PKCE code challenge
      sig { returns(T.nilable(String)) }
      attr_reader :code_challenge

      sig { params(code_challenge: String).void }
      attr_writer :code_challenge

      # PKCE code challenge method
      sig do
        returns(
          T.nilable(
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::OrSymbol
          )
        )
      end
      attr_reader :code_challenge_method

      sig do
        params(
          code_challenge_method:
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::OrSymbol
        ).void
      end
      attr_writer :code_challenge_method

      # Space-separated list of requested scopes
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      # State parameter for CSRF protection
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig do
        params(
          client_id: String,
          redirect_uri: String,
          response_type:
            Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::OrSymbol,
          code_challenge: String,
          code_challenge_method:
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::OrSymbol,
          scope: String,
          state: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # OAuth client identifier
        client_id:,
        # Redirect URI
        redirect_uri:,
        # OAuth response type
        response_type:,
        # PKCE code challenge
        code_challenge: nil,
        # PKCE code challenge method
        code_challenge_method: nil,
        # Space-separated list of requested scopes
        scope: nil,
        # State parameter for CSRF protection
        state: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            client_id: String,
            redirect_uri: String,
            response_type:
              Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::OrSymbol,
            code_challenge: String,
            code_challenge_method:
              Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::OrSymbol,
            scope: String,
            state: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # OAuth response type
      module ResponseType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OAuthRetrieveAuthorizeParams::ResponseType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CODE =
          T.let(
            :code,
            Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthRetrieveAuthorizeParams::ResponseType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # PKCE code challenge method
      module CodeChallengeMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLAIN =
          T.let(
            :plain,
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::TaggedSymbol
          )
        S256 =
          T.let(
            :S256,
            Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::OAuthRetrieveAuthorizeParams::CodeChallengeMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
