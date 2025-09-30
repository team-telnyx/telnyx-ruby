# typed: strong

module Telnyx
  module Models
    class OAuthRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::OAuthRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::OAuthRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::OAuthRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::OAuthRetrieveResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Client ID
        sig { returns(T.nilable(String)) }
        attr_reader :client_id

        sig { params(client_id: String).void }
        attr_writer :client_id

        # URL of the client logo
        sig { returns(T.nilable(String)) }
        attr_accessor :logo_uri

        # Client name
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # URL of the client's privacy policy
        sig { returns(T.nilable(String)) }
        attr_accessor :policy_uri

        # The redirect URI for this authorization
        sig { returns(T.nilable(String)) }
        attr_reader :redirect_uri

        sig { params(redirect_uri: String).void }
        attr_writer :redirect_uri

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope
              ]
            )
          )
        end
        attr_reader :requested_scopes

        sig do
          params(
            requested_scopes:
              T::Array[
                Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope::OrHash
              ]
          ).void
        end
        attr_writer :requested_scopes

        # URL of the client's terms of service
        sig { returns(T.nilable(String)) }
        attr_accessor :tos_uri

        # Whether the client is verified
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :verified

        sig { params(verified: T::Boolean).void }
        attr_writer :verified

        sig do
          params(
            client_id: String,
            logo_uri: T.nilable(String),
            name: String,
            policy_uri: T.nilable(String),
            redirect_uri: String,
            requested_scopes:
              T::Array[
                Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope::OrHash
              ],
            tos_uri: T.nilable(String),
            verified: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Client ID
          client_id: nil,
          # URL of the client logo
          logo_uri: nil,
          # Client name
          name: nil,
          # URL of the client's privacy policy
          policy_uri: nil,
          # The redirect URI for this authorization
          redirect_uri: nil,
          requested_scopes: nil,
          # URL of the client's terms of service
          tos_uri: nil,
          # Whether the client is verified
          verified: nil
        )
        end

        sig do
          override.returns(
            {
              client_id: String,
              logo_uri: T.nilable(String),
              name: String,
              policy_uri: T.nilable(String),
              redirect_uri: String,
              requested_scopes:
                T::Array[
                  Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope
                ],
              tos_uri: T.nilable(String),
              verified: T::Boolean
            }
          )
        end
        def to_hash
        end

        class RequestedScope < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::OAuthRetrieveResponse::Data::RequestedScope,
                Telnyx::Internal::AnyHash
              )
            end

          # Scope ID
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Scope description
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Scope name
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(id: String, description: String, name: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Scope ID
            id: nil,
            # Scope description
            description: nil,
            # Scope name
            name: nil
          )
          end

          sig do
            override.returns({ id: String, description: String, name: String })
          end
          def to_hash
          end
        end
      end
    end
  end
end
