# typed: strong

module Telnyx
  module Models
    class IPConnection < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::IPConnection, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
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

      # Specifies if call cost webhooks should be sent for this connection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # When enabled, Telnyx will generate comfort noise when you place the call on
      # hold. If disabled, you will need to generate comfort noise or on hold music to
      # avoid RTP timeout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_on_hold_comfort_noise_enabled

      sig { params(default_on_hold_comfort_noise_enabled: T::Boolean).void }
      attr_writer :default_on_hold_comfort_noise_enabled

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig { returns(T.nilable(Telnyx::DtmfType::TaggedSymbol)) }
      attr_reader :dtmf_type

      sig { params(dtmf_type: Telnyx::DtmfType::OrSymbol).void }
      attr_writer :dtmf_type

      # Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
      # scenarios.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :encode_contact_header_enabled

      sig { params(encode_contact_header_enabled: T::Boolean).void }
      attr_writer :encode_contact_header_enabled

      # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
      # TLS.
      sig { returns(T.nilable(Telnyx::EncryptedMedia::TaggedSymbol)) }
      attr_accessor :encrypted_media

      sig { returns(T.nilable(Telnyx::InboundIP)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::InboundIP::OrHash).void }
      attr_writer :inbound

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      sig do
        returns(T.nilable(Telnyx::IPConnection::NoiseSuppression::TaggedSymbol))
      end
      attr_reader :noise_suppression

      sig do
        params(
          noise_suppression: Telnyx::IPConnection::NoiseSuppression::OrSymbol
        ).void
      end
      attr_writer :noise_suppression

      # Configuration options for noise suppression. These settings are stored
      # regardless of the noise_suppression value, but only take effect when
      # noise_suppression is not 'disabled'. If you disable noise suppression and later
      # re-enable it, the previously configured settings will be used.
      sig { returns(T.nilable(Telnyx::IPConnection::NoiseSuppressionDetails)) }
      attr_reader :noise_suppression_details

      sig do
        params(
          noise_suppression_details:
            Telnyx::IPConnection::NoiseSuppressionDetails::OrHash
        ).void
      end
      attr_writer :noise_suppression_details

      # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
      # use T38 on just one leg of the call depending on each leg's settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :onnet_t38_passthrough_enabled

      sig { params(onnet_t38_passthrough_enabled: T::Boolean).void }
      attr_writer :onnet_t38_passthrough_enabled

      sig { returns(T.nilable(Telnyx::OutboundIP)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::OutboundIP::OrHash).void }
      attr_writer :outbound

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig { returns(T.nilable(Telnyx::ConnectionRtcpSettings)) }
      attr_reader :rtcp_settings

      sig { params(rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash).void }
      attr_writer :rtcp_settings

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      sig do
        returns(
          T.nilable(Telnyx::IPConnection::TransportProtocol::TaggedSymbol)
        )
      end
      attr_reader :transport_protocol

      sig do
        params(
          transport_protocol: Telnyx::IPConnection::TransportProtocol::OrSymbol
        ).void
      end
      attr_writer :transport_protocol

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(Telnyx::IPConnection::WebhookAPIVersion::TaggedSymbol)
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version: Telnyx::IPConnection::WebhookAPIVersion::OrSymbol
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
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          connection_name: String,
          created_at: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          inbound: Telnyx::InboundIP::OrHash,
          noise_suppression: Telnyx::IPConnection::NoiseSuppression::OrSymbol,
          noise_suppression_details:
            Telnyx::IPConnection::NoiseSuppressionDetails::OrHash,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundIP::OrHash,
          record_type: String,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          tags: T::Array[String],
          transport_protocol: Telnyx::IPConnection::TransportProtocol::OrSymbol,
          updated_at: String,
          webhook_api_version:
            Telnyx::IPConnection::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # Defaults to true
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this connection.
        call_cost_in_webhooks: nil,
        connection_name: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # When enabled, Telnyx will generate comfort noise when you place the call on
        # hold. If disabled, you will need to generate comfort noise or on hold music to
        # avoid RTP timeout.
        default_on_hold_comfort_noise_enabled: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
        # scenarios.
        encode_contact_header_enabled: nil,
        # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
        # TLS.
        encrypted_media: nil,
        inbound: nil,
        # Controls when noise suppression is applied to calls. When set to 'inbound',
        # noise suppression is applied to incoming audio. When set to 'outbound', it's
        # applied to outgoing audio. When set to 'both', it's applied in both directions.
        # When set to 'disabled', noise suppression is turned off.
        noise_suppression: nil,
        # Configuration options for noise suppression. These settings are stored
        # regardless of the noise_suppression value, but only take effect when
        # noise_suppression is not 'disabled'. If you disable noise suppression and later
        # re-enable it, the previously configured settings will be used.
        noise_suppression_details: nil,
        # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
        # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
        # use T38 on just one leg of the call depending on each leg's settings.
        onnet_t38_passthrough_enabled: nil,
        outbound: nil,
        # Identifies the type of the resource.
        record_type: nil,
        rtcp_settings: nil,
        # Tags associated with the connection.
        tags: nil,
        # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
        # FQDN authentication.
        transport_protocol: nil,
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
            anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
            call_cost_in_webhooks: T::Boolean,
            connection_name: String,
            created_at: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::TaggedSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::TaggedSymbol),
            inbound: Telnyx::InboundIP,
            noise_suppression:
              Telnyx::IPConnection::NoiseSuppression::TaggedSymbol,
            noise_suppression_details:
              Telnyx::IPConnection::NoiseSuppressionDetails,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::OutboundIP,
            record_type: String,
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            tags: T::Array[String],
            transport_protocol:
              Telnyx::IPConnection::TransportProtocol::TaggedSymbol,
            updated_at: String,
            webhook_api_version:
              Telnyx::IPConnection::WebhookAPIVersion::TaggedSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      module NoiseSuppression
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::IPConnection::NoiseSuppression) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(:inbound, Telnyx::IPConnection::NoiseSuppression::TaggedSymbol)
        OUTBOUND =
          T.let(:outbound, Telnyx::IPConnection::NoiseSuppression::TaggedSymbol)
        BOTH =
          T.let(:both, Telnyx::IPConnection::NoiseSuppression::TaggedSymbol)
        DISABLED =
          T.let(:disabled, Telnyx::IPConnection::NoiseSuppression::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::IPConnection::NoiseSuppression::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class NoiseSuppressionDetails < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::IPConnection::NoiseSuppressionDetails,
              Telnyx::Internal::AnyHash
            )
          end

        # The attenuation limit value for the selected engine. Default values vary by
        # engine: 0 for 'denoiser', 80 for 'deep_filter_net', 'deep_filter_net_large', and
        # all Krisp engines ('krisp_viva_tel', 'krisp_viva_tel_lite',
        # 'krisp_viva_promodel', 'krisp_viva_ss').
        sig { returns(T.nilable(Integer)) }
        attr_reader :attenuation_limit

        sig { params(attenuation_limit: Integer).void }
        attr_writer :attenuation_limit

        # The noise suppression engine to use. 'denoiser' is the default engine.
        # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
        # different performance characteristics. Krisp engines ('krisp_viva_tel',
        # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
        # noise suppression capabilities.
        sig do
          returns(
            T.nilable(
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          )
        end
        attr_reader :engine

        sig do
          params(
            engine:
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::OrSymbol
          ).void
        end
        attr_writer :engine

        # Configuration options for noise suppression. These settings are stored
        # regardless of the noise_suppression value, but only take effect when
        # noise_suppression is not 'disabled'. If you disable noise suppression and later
        # re-enable it, the previously configured settings will be used.
        sig do
          params(
            attenuation_limit: Integer,
            engine:
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The attenuation limit value for the selected engine. Default values vary by
          # engine: 0 for 'denoiser', 80 for 'deep_filter_net', 'deep_filter_net_large', and
          # all Krisp engines ('krisp_viva_tel', 'krisp_viva_tel_lite',
          # 'krisp_viva_promodel', 'krisp_viva_ss').
          attenuation_limit: nil,
          # The noise suppression engine to use. 'denoiser' is the default engine.
          # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
          # different performance characteristics. Krisp engines ('krisp_viva_tel',
          # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
          # noise suppression capabilities.
          engine: nil
        )
        end

        sig do
          override.returns(
            {
              attenuation_limit: Integer,
              engine:
                Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The noise suppression engine to use. 'denoiser' is the default engine.
        # 'deep_filter_net' and 'deep_filter_net_large' are alternative engines with
        # different performance characteristics. Krisp engines ('krisp_viva_tel',
        # 'krisp_viva_tel_lite', 'krisp_viva_promodel', 'krisp_viva_ss') provide advanced
        # noise suppression capabilities.
        module Engine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::IPConnection::NoiseSuppressionDetails::Engine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DENOISER =
            T.let(
              :denoiser,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          DEEP_FILTER_NET =
            T.let(
              :deep_filter_net,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          DEEP_FILTER_NET_LARGE =
            T.let(
              :deep_filter_net_large,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          KRISP_VIVA_TEL =
            T.let(
              :krisp_viva_tel,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          KRISP_VIVA_TEL_LITE =
            T.let(
              :krisp_viva_tel_lite,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          KRISP_VIVA_PROMODEL =
            T.let(
              :krisp_viva_promodel,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )
          KRISP_VIVA_SS =
            T.let(
              :krisp_viva_ss,
              Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnection::NoiseSuppressionDetails::Engine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      module TransportProtocol
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::IPConnection::TransportProtocol)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UDP = T.let(:UDP, Telnyx::IPConnection::TransportProtocol::TaggedSymbol)
        TCP = T.let(:TCP, Telnyx::IPConnection::TransportProtocol::TaggedSymbol)
        TLS = T.let(:TLS, Telnyx::IPConnection::TransportProtocol::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::IPConnection::TransportProtocol::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::IPConnection::WebhookAPIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 = T.let(:"1", Telnyx::IPConnection::WebhookAPIVersion::TaggedSymbol)
        V2 = T.let(:"2", Telnyx::IPConnection::WebhookAPIVersion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::IPConnection::WebhookAPIVersion::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
