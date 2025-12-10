# typed: strong

module Telnyx
  module Models
    class ExternalConnection < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ExternalConnection, Telnyx::Internal::AnyHash)
        end

      # Uniquely identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Specifies whether the connection can be used.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # If the credential associated with this service is active.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :credential_active

      sig { params(credential_active: T::Boolean).void }
      attr_writer :credential_active

      # The service that will be consuming this connection.
      sig do
        returns(
          T.nilable(
            Telnyx::ExternalConnection::ExternalSipConnection::TaggedSymbol
          )
        )
      end
      attr_reader :external_sip_connection

      sig do
        params(
          external_sip_connection:
            Telnyx::ExternalConnection::ExternalSipConnection::OrSymbol
        ).void
      end
      attr_writer :external_sip_connection

      sig { returns(T.nilable(Telnyx::ExternalConnection::Inbound)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::ExternalConnection::Inbound::OrHash).void }
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::ExternalConnection::Outbound)) }
      attr_reader :outbound

      sig do
        params(outbound: Telnyx::ExternalConnection::Outbound::OrHash).void
      end
      attr_writer :outbound

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
          T.nilable(Telnyx::ExternalConnection::WebhookAPIVersion::TaggedSymbol)
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::ExternalConnection::WebhookAPIVersion::OrSymbol
        ).void
      end
      attr_writer :webhook_api_version

      # The failover URL where webhooks related to this connection will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this connection will be sent. Must include a
      # scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          id: String,
          active: T::Boolean,
          created_at: String,
          credential_active: T::Boolean,
          external_sip_connection:
            Telnyx::ExternalConnection::ExternalSipConnection::OrSymbol,
          inbound: Telnyx::ExternalConnection::Inbound::OrHash,
          outbound: Telnyx::ExternalConnection::Outbound::OrHash,
          record_type: String,
          tags: T::Array[String],
          updated_at: String,
          webhook_api_version:
            Telnyx::ExternalConnection::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the resource.
        id: nil,
        # Specifies whether the connection can be used.
        active: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # If the credential associated with this service is active.
        credential_active: nil,
        # The service that will be consuming this connection.
        external_sip_connection: nil,
        inbound: nil,
        outbound: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Tags associated with the connection.
        tags: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            created_at: String,
            credential_active: T::Boolean,
            external_sip_connection:
              Telnyx::ExternalConnection::ExternalSipConnection::TaggedSymbol,
            inbound: Telnyx::ExternalConnection::Inbound,
            outbound: Telnyx::ExternalConnection::Outbound,
            record_type: String,
            tags: T::Array[String],
            updated_at: String,
            webhook_api_version:
              Telnyx::ExternalConnection::WebhookAPIVersion::TaggedSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # The service that will be consuming this connection.
      module ExternalSipConnection
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ExternalConnection::ExternalSipConnection)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ZOOM =
          T.let(
            :zoom,
            Telnyx::ExternalConnection::ExternalSipConnection::TaggedSymbol
          )
        OPERATOR_CONNECT =
          T.let(
            :operator_connect,
            Telnyx::ExternalConnection::ExternalSipConnection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ExternalConnection::ExternalSipConnection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnection::Inbound,
              Telnyx::Internal::AnyHash
            )
          end

        # When set, this will limit the number of concurrent inbound calls to phone
        # numbers associated with this connection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        sig { params(channel_limit: Integer).returns(T.attached_class) }
        def self.new(
          # When set, this will limit the number of concurrent inbound calls to phone
          # numbers associated with this connection.
          channel_limit: nil
        )
        end

        sig { override.returns({ channel_limit: Integer }) }
        def to_hash
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnection::Outbound,
              Telnyx::Internal::AnyHash
            )
          end

        # When set, this will limit the number of concurrent outbound calls to phone
        # numbers associated with this connection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        # Identifies the associated outbound voice profile.
        sig { returns(T.nilable(String)) }
        attr_reader :outbound_voice_profile_id

        sig { params(outbound_voice_profile_id: String).void }
        attr_writer :outbound_voice_profile_id

        sig do
          params(
            channel_limit: Integer,
            outbound_voice_profile_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # When set, this will limit the number of concurrent outbound calls to phone
          # numbers associated with this connection.
          channel_limit: nil,
          # Identifies the associated outbound voice profile.
          outbound_voice_profile_id: nil
        )
        end

        sig do
          override.returns(
            { channel_limit: Integer, outbound_voice_profile_id: String }
          )
        end
        def to_hash
        end
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ExternalConnection::WebhookAPIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :"1",
            Telnyx::ExternalConnection::WebhookAPIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :"2",
            Telnyx::ExternalConnection::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ExternalConnection::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
