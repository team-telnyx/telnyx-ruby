# typed: strong

module Telnyx
  module Models
    class ExternalConnectionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ExternalConnectionCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The service that will be consuming this connection.
      sig do
        returns(
          Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::OrSymbol
        )
      end
      attr_accessor :external_sip_connection

      sig { returns(Telnyx::ExternalConnectionCreateParams::Outbound) }
      attr_reader :outbound

      sig do
        params(
          outbound: Telnyx::ExternalConnectionCreateParams::Outbound::OrHash
        ).void
      end
      attr_writer :outbound

      # Specifies whether the connection can be used.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      sig do
        returns(T.nilable(Telnyx::ExternalConnectionCreateParams::Inbound))
      end
      attr_reader :inbound

      sig do
        params(
          inbound: Telnyx::ExternalConnectionCreateParams::Inbound::OrHash
        ).void
      end
      attr_writer :inbound

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

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
          external_sip_connection:
            Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::OrSymbol,
          outbound: Telnyx::ExternalConnectionCreateParams::Outbound::OrHash,
          active: T::Boolean,
          inbound: Telnyx::ExternalConnectionCreateParams::Inbound::OrHash,
          tags: T::Array[String],
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The service that will be consuming this connection.
        external_sip_connection:,
        outbound:,
        # Specifies whether the connection can be used.
        active: nil,
        inbound: nil,
        # Tags associated with the connection.
        tags: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            external_sip_connection:
              Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::OrSymbol,
            outbound: Telnyx::ExternalConnectionCreateParams::Outbound,
            active: T::Boolean,
            inbound: Telnyx::ExternalConnectionCreateParams::Inbound,
            tags: T::Array[String],
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
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
            T.all(
              Symbol,
              Telnyx::ExternalConnectionCreateParams::ExternalSipConnection
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ZOOM =
          T.let(
            :zoom,
            Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ExternalConnectionCreateParams::ExternalSipConnection::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnectionCreateParams::Outbound,
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

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnectionCreateParams::Inbound,
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
    end
  end
end
