# typed: strong

module Telnyx
  module Models
    class OAuthGrantListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OAuthGrantListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::OAuthGrantListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::OAuthGrantListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::OAuthGrantListResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::OAuthGrantListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::OAuthGrantListResponse::Data::OrHash],
          meta: Telnyx::Models::OAuthGrantListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::OAuthGrantListResponse::Data],
            meta: Telnyx::Models::OAuthGrantListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OAuthGrantListResponse::Data,
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
            Telnyx::Models::OAuthGrantListResponse::Data::RecordType::TaggedSymbol
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
              Telnyx::Models::OAuthGrantListResponse::Data::RecordType::OrSymbol,
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
                Telnyx::Models::OAuthGrantListResponse::Data::RecordType::TaggedSymbol,
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
                Telnyx::Models::OAuthGrantListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OAUTH_GRANT =
            T.let(
              :oauth_grant,
              Telnyx::Models::OAuthGrantListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OAuthGrantListResponse::Data::RecordType::TaggedSymbol
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
              Telnyx::Models::OAuthGrantListResponse::Meta,
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
