# typed: strong

module Telnyx
  module Models
    class MobileVoiceConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MobileVoiceConnectionUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      sig do
        returns(T.nilable(Telnyx::MobileVoiceConnectionUpdateParams::Inbound))
      end
      attr_reader :inbound

      sig do
        params(
          inbound: Telnyx::MobileVoiceConnectionUpdateParams::Inbound::OrHash
        ).void
      end
      attr_writer :inbound

      sig do
        returns(T.nilable(Telnyx::MobileVoiceConnectionUpdateParams::Outbound))
      end
      attr_reader :outbound

      sig do
        params(
          outbound: Telnyx::MobileVoiceConnectionUpdateParams::Outbound::OrHash
        ).void
      end
      attr_writer :outbound

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        returns(
          T.nilable(
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::OrSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::OrSymbol
        ).void
      end
      attr_writer :webhook_api_version

      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_url

      sig { returns(T.nilable(Integer)) }
      attr_reader :webhook_timeout_secs

      sig { params(webhook_timeout_secs: Integer).void }
      attr_writer :webhook_timeout_secs

      sig do
        params(
          active: T::Boolean,
          connection_name: String,
          inbound: Telnyx::MobileVoiceConnectionUpdateParams::Inbound::OrHash,
          outbound: Telnyx::MobileVoiceConnectionUpdateParams::Outbound::OrHash,
          tags: T::Array[String],
          webhook_api_version:
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: T.nilable(String),
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        active: nil,
        connection_name: nil,
        inbound: nil,
        outbound: nil,
        tags: nil,
        webhook_api_version: nil,
        webhook_event_failover_url: nil,
        webhook_event_url: nil,
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            connection_name: String,
            inbound: Telnyx::MobileVoiceConnectionUpdateParams::Inbound,
            outbound: Telnyx::MobileVoiceConnectionUpdateParams::Outbound,
            tags: T::Array[String],
            webhook_api_version:
              Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: T.nilable(String),
            webhook_timeout_secs: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobileVoiceConnectionUpdateParams::Inbound,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        sig { params(channel_limit: Integer).returns(T.attached_class) }
        def self.new(channel_limit: nil)
        end

        sig { override.returns({ channel_limit: Integer }) }
        def to_hash
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MobileVoiceConnectionUpdateParams::Outbound,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

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
        def self.new(channel_limit: nil, outbound_voice_profile_id: nil)
        end

        sig do
          override.returns(
            { channel_limit: Integer, outbound_voice_profile_id: String }
          )
        end
        def to_hash
        end
      end

      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :"1",
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :"2",
            Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MobileVoiceConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
