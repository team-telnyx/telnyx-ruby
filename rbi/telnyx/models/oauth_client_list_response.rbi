# typed: strong

module Telnyx
  module Models
    class OAuthClientListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthClientListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::OAuthClientListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::OAuthClientListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::OAuthClientListResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::OAuthClientListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::OAuthClientListResponse::Data::OrHash],
          meta: Telnyx::Models::OAuthClientListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::OAuthClientListResponse::Data],
            meta: Telnyx::Models::OAuthClientListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthClientListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # OAuth client identifier
        sig { returns(String) }
        attr_accessor :client_id

        # OAuth client type
        sig do
          returns(
            Telnyx::Models::OAuthClientListResponse::Data::ClientType::TaggedSymbol
          )
        end
        attr_accessor :client_type

        # Timestamp when the client was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Human-readable name for the OAuth client
        sig { returns(String) }
        attr_accessor :name

        # Organization ID that owns this OAuth client
        sig { returns(String) }
        attr_accessor :org_id

        # Record type identifier
        sig do
          returns(
            Telnyx::Models::OAuthClientListResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Whether PKCE (Proof Key for Code Exchange) is required for this client
        sig { returns(T::Boolean) }
        attr_accessor :require_pkce

        # Timestamp when the client was last updated
        sig { returns(Time) }
        attr_accessor :updated_at

        # User ID that created this OAuth client
        sig { returns(String) }
        attr_accessor :user_id

        # List of allowed OAuth grant types
        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :allowed_grant_types

        sig do
          params(
            allowed_grant_types:
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::OrSymbol
              ]
          ).void
        end
        attr_writer :allowed_grant_types

        # List of allowed OAuth scopes
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_scopes

        sig { params(allowed_scopes: T::Array[String]).void }
        attr_writer :allowed_scopes

        # Client secret (only included when available, for confidential clients)
        sig { returns(T.nilable(String)) }
        attr_accessor :client_secret

        # URL of the client logo
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_uri

        # URL of the client's privacy policy
        sig { returns(T.nilable(String)) }
        attr_accessor :policy_uri

        # List of allowed redirect URIs
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :redirect_uris

        sig { params(redirect_uris: T::Array[String]).void }
        attr_writer :redirect_uris

        # URL of the client's terms of service
        sig { returns(T.nilable(String)) }
        attr_accessor :tos_uri

        sig do
          params(
            client_id: String,
            client_type:
              Telnyx::Models::OAuthClientListResponse::Data::ClientType::OrSymbol,
            created_at: Time,
            name: String,
            org_id: String,
            record_type:
              Telnyx::Models::OAuthClientListResponse::Data::RecordType::OrSymbol,
            require_pkce: T::Boolean,
            updated_at: Time,
            user_id: String,
            allowed_grant_types:
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::OrSymbol
              ],
            allowed_scopes: T::Array[String],
            client_secret: T.nilable(String),
            logo_uri: T.nilable(String),
            policy_uri: T.nilable(String),
            redirect_uris: T::Array[String],
            tos_uri: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # OAuth client identifier
          client_id:,
          # OAuth client type
          client_type:,
          # Timestamp when the client was created
          created_at:,
          # Human-readable name for the OAuth client
          name:,
          # Organization ID that owns this OAuth client
          org_id:,
          # Record type identifier
          record_type:,
          # Whether PKCE (Proof Key for Code Exchange) is required for this client
          require_pkce:,
          # Timestamp when the client was last updated
          updated_at:,
          # User ID that created this OAuth client
          user_id:,
          # List of allowed OAuth grant types
          allowed_grant_types: nil,
          # List of allowed OAuth scopes
          allowed_scopes: nil,
          # Client secret (only included when available, for confidential clients)
          client_secret: nil,
          # URL of the client logo
          logo_uri: nil,
          # URL of the client's privacy policy
          policy_uri: nil,
          # List of allowed redirect URIs
          redirect_uris: nil,
          # URL of the client's terms of service
          tos_uri: nil
        )
        end

        sig do
          override.returns(
            {
              client_id: String,
              client_type:
                Telnyx::Models::OAuthClientListResponse::Data::ClientType::TaggedSymbol,
              created_at: Time,
              name: String,
              org_id: String,
              record_type:
                Telnyx::Models::OAuthClientListResponse::Data::RecordType::TaggedSymbol,
              require_pkce: T::Boolean,
              updated_at: Time,
              user_id: String,
              allowed_grant_types:
                T::Array[
                  Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
                ],
              allowed_scopes: T::Array[String],
              client_secret: T.nilable(String),
              logo_uri: T.nilable(String),
              policy_uri: T.nilable(String),
              redirect_uris: T::Array[String],
              tos_uri: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # OAuth client type
        module ClientType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OAuthClientListResponse::Data::ClientType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC =
            T.let(
              :public,
              Telnyx::Models::OAuthClientListResponse::Data::ClientType::TaggedSymbol
            )
          CONFIDENTIAL =
            T.let(
              :confidential,
              Telnyx::Models::OAuthClientListResponse::Data::ClientType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::ClientType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Record type identifier
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OAuthClientListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OAUTH_CLIENT =
            T.let(
              :oauth_client,
              Telnyx::Models::OAuthClientListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module AllowedGrantType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CLIENT_CREDENTIALS =
            T.let(
              :client_credentials,
              Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
            )
          AUTHORIZATION_CODE =
            T.let(
              :authorization_code,
              Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
            )
          REFRESH_TOKEN =
            T.let(
              :refresh_token,
              Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OAuthClientListResponse::Data::AllowedGrantType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthClientListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Current page number
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Number of items per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Total number of pages
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        # Total number of results
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Current page number
          page_number: nil,
          # Number of items per page
          page_size: nil,
          # Total number of pages
          total_pages: nil,
          # Total number of results
          total_results: nil
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
