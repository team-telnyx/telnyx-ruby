# typed: strong

module Telnyx
  module Models
    class OAuthGrantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthGrantRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::OAuthGrantRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::OAuthGrantRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::OAuthGrantRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::OAuthGrantRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthGrantRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the OAuth grant
        sig { returns(String) }
        attr_accessor :id

        # OAuth client identifier
        sig { returns(String) }
        attr_accessor :client_id

        # Timestamp when the grant was created
        sig { returns(Time) }
        attr_accessor :created_at

        # Record type identifier
        sig do
          returns(
            Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # List of granted OAuth scopes
        sig { returns(T::Array[String]) }
        attr_accessor :scopes

        # Timestamp when the grant was last used
        sig { returns(T.nilable(Time)) }
        attr_accessor :last_used_at

        sig do
          params(
            id: String,
            client_id: String,
            created_at: Time,
            record_type:
              Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType::OrSymbol,
            scopes: T::Array[String],
            last_used_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the OAuth grant
          id:,
          # OAuth client identifier
          client_id:,
          # Timestamp when the grant was created
          created_at:,
          # Record type identifier
          record_type:,
          # List of granted OAuth scopes
          scopes:,
          # Timestamp when the grant was last used
          last_used_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              client_id: String,
              created_at: Time,
              record_type:
                Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType::TaggedSymbol,
              scopes: T::Array[String],
              last_used_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        # Record type identifier
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OAUTH_GRANT =
            T.let(
              :oauth_grant,
              Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
