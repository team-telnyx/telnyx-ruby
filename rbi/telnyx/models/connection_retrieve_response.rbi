# typed: strong

module Telnyx
  module Models
    class ConnectionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConnectionRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::ConnectionRetrieveResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::ConnectionRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::ConnectionRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ConnectionRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConnectionRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the specific resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Defaults to true
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        sig { returns(T.nilable(Telnyx::AnchorsiteOverride::TaggedSymbol)) }
        attr_reader :anchorsite_override

        sig do
          params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
        end
        attr_writer :anchorsite_override

        sig { returns(T.nilable(String)) }
        attr_reader :connection_name

        sig { params(connection_name: String).void }
        attr_writer :connection_name

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Tags associated with the connection.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # Determines which webhook format will be used, Telnyx API v1 or v2.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          )
        end
        attr_reader :webhook_api_version

        sig do
          params(
            webhook_api_version:
              Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::OrSymbol
          ).void
        end
        attr_writer :webhook_api_version

        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails.
        sig { returns(T.nilable(String)) }
        attr_accessor :webhook_event_failover_url

        # The URL where webhooks related to this connection will be sent.
        sig { returns(T.nilable(String)) }
        attr_accessor :webhook_event_url

        sig do
          params(
            id: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            connection_name: String,
            created_at: String,
            outbound_voice_profile_id: String,
            record_type: String,
            tags: T::Array[String],
            updated_at: String,
            webhook_api_version:
              Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the specific resource.
          id: nil,
          # Defaults to true
          active: nil,
          # `Latency` directs Telnyx to route media through the site with the lowest
          # round-trip time to the user's connection. Telnyx calculates this time using ICMP
          # ping messages. This can be disabled by specifying a site to handle all media.
          anchorsite_override: nil,
          connection_name: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # Tags associated with the connection.
          tags: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil,
          # Determines which webhook format will be used, Telnyx API v1 or v2.
          webhook_api_version: nil,
          # The failover URL where webhooks related to this connection will be sent if
          # sending to the primary URL fails.
          webhook_event_failover_url: nil,
          # The URL where webhooks related to this connection will be sent.
          webhook_event_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
              connection_name: String,
              created_at: String,
              outbound_voice_profile_id: String,
              record_type: String,
              tags: T::Array[String],
              updated_at: String,
              webhook_api_version:
                Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::TaggedSymbol,
              webhook_event_failover_url: T.nilable(String),
              webhook_event_url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Determines which webhook format will be used, Telnyx API v1 or v2.
        module WebhookAPIVersion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WEBHOOK_API_VERSION_1 =
            T.let(
              :"1",
              Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          WEBHOOK_API_VERSION_2 =
            T.let(
              :"2",
              Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ConnectionRetrieveResponse::Data::WebhookAPIVersion::TaggedSymbol
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
