# typed: strong

module Telnyx
  module Models
    class TexmlApplicationUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::TexmlApplicationUpdateParams, Telnyx::Internal::AnyHash)
        end

      # A user-assigned name to help manage the application.
      sig { returns(String) }
      attr_accessor :friendly_name

      # URL to which Telnyx will deliver your XML Translator webhooks.
      sig { returns(String) }
      attr_accessor :voice_url

      # Specifies whether the connection can be used.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::OrSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig { returns(T.nilable(Telnyx::DtmfType::OrSymbol)) }
      attr_reader :dtmf_type

      sig { params(dtmf_type: Telnyx::DtmfType::OrSymbol).void }
      attr_writer :dtmf_type

      # Specifies whether calls to phone numbers associated with this connection should
      # hangup after timing out.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :first_command_timeout

      sig { params(first_command_timeout: T::Boolean).void }
      attr_writer :first_command_timeout

      # Specifies how many seconds to wait before timing out a dial command.
      sig { returns(T.nilable(Integer)) }
      attr_reader :first_command_timeout_secs

      sig { params(first_command_timeout_secs: Integer).void }
      attr_writer :first_command_timeout_secs

      sig { returns(T.nilable(Telnyx::TexmlApplicationUpdateParams::Inbound)) }
      attr_reader :inbound

      sig do
        params(
          inbound: Telnyx::TexmlApplicationUpdateParams::Inbound::OrHash
        ).void
      end
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::TexmlApplicationUpdateParams::Outbound)) }
      attr_reader :outbound

      sig do
        params(
          outbound: Telnyx::TexmlApplicationUpdateParams::Outbound::OrHash
        ).void
      end
      attr_writer :outbound

      # URL for Telnyx to send requests to containing information about call progress
      # events.
      sig { returns(T.nilable(String)) }
      attr_reader :status_callback

      sig { params(status_callback: String).void }
      attr_writer :status_callback

      # HTTP request method Telnyx should use when requesting the status_callback URL.
      sig do
        returns(
          T.nilable(
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::OrSymbol
          )
        )
      end
      attr_reader :status_callback_method

      sig do
        params(
          status_callback_method:
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :status_callback_method

      # Tags associated with the Texml Application.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      # response from your voice_url.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_fallback_url

      sig { params(voice_fallback_url: String).void }
      attr_writer :voice_fallback_url

      # HTTP request method Telnyx will use to interact with your XML Translator
      # webhooks. Either 'get' or 'post'.
      sig do
        returns(
          T.nilable(Telnyx::TexmlApplicationUpdateParams::VoiceMethod::OrSymbol)
        )
      end
      attr_reader :voice_method

      sig do
        params(
          voice_method:
            Telnyx::TexmlApplicationUpdateParams::VoiceMethod::OrSymbol
        ).void
      end
      attr_writer :voice_method

      sig do
        params(
          friendly_name: String,
          voice_url: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          inbound: Telnyx::TexmlApplicationUpdateParams::Inbound::OrHash,
          outbound: Telnyx::TexmlApplicationUpdateParams::Outbound::OrHash,
          status_callback: String,
          status_callback_method:
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::OrSymbol,
          tags: T::Array[String],
          voice_fallback_url: String,
          voice_method:
            Telnyx::TexmlApplicationUpdateParams::VoiceMethod::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user-assigned name to help manage the application.
        friendly_name:,
        # URL to which Telnyx will deliver your XML Translator webhooks.
        voice_url:,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Specifies whether calls to phone numbers associated with this connection should
        # hangup after timing out.
        first_command_timeout: nil,
        # Specifies how many seconds to wait before timing out a dial command.
        first_command_timeout_secs: nil,
        inbound: nil,
        outbound: nil,
        # URL for Telnyx to send requests to containing information about call progress
        # events.
        status_callback: nil,
        # HTTP request method Telnyx should use when requesting the status_callback URL.
        status_callback_method: nil,
        # Tags associated with the Texml Application.
        tags: nil,
        # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
        # response from your voice_url.
        voice_fallback_url: nil,
        # HTTP request method Telnyx will use to interact with your XML Translator
        # webhooks. Either 'get' or 'post'.
        voice_method: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            friendly_name: String,
            voice_url: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            dtmf_type: Telnyx::DtmfType::OrSymbol,
            first_command_timeout: T::Boolean,
            first_command_timeout_secs: Integer,
            inbound: Telnyx::TexmlApplicationUpdateParams::Inbound,
            outbound: Telnyx::TexmlApplicationUpdateParams::Outbound,
            status_callback: String,
            status_callback_method:
              Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::OrSymbol,
            tags: T::Array[String],
            voice_fallback_url: String,
            voice_method:
              Telnyx::TexmlApplicationUpdateParams::VoiceMethod::OrSymbol,
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
              Telnyx::TexmlApplicationUpdateParams::Inbound,
              Telnyx::Internal::AnyHash
            )
          end

        # When set, this will limit the total number of inbound calls to phone numbers
        # associated with this connection.
        sig { returns(T.nilable(Integer)) }
        attr_reader :channel_limit

        sig { params(channel_limit: Integer).void }
        attr_writer :channel_limit

        # When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
        # calls.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :shaken_stir_enabled

        sig { params(shaken_stir_enabled: T::Boolean).void }
        attr_writer :shaken_stir_enabled

        # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        # in the same way a phone number is used, from a SIP endpoint. Example: the
        # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
        # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
        # alphanumeric value. Please note TLS encrypted calls are not allowed for
        # subdomain calls.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_subdomain

        sig { params(sip_subdomain: String).void }
        attr_writer :sip_subdomain

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        sig do
          returns(
            T.nilable(
              Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
            )
          )
        end
        attr_reader :sip_subdomain_receive_settings

        sig do
          params(
            sip_subdomain_receive_settings:
              Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).void
        end
        attr_writer :sip_subdomain_receive_settings

        sig do
          params(
            channel_limit: Integer,
            shaken_stir_enabled: T::Boolean,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # When set, this will limit the total number of inbound calls to phone numbers
          # associated with this connection.
          channel_limit: nil,
          # When enabled Telnyx will include Shaken/Stir data in the Webhook for new inbound
          # calls.
          shaken_stir_enabled: nil,
          # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
          # in the same way a phone number is used, from a SIP endpoint. Example: the
          # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
          # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
          # alphanumeric value. Please note TLS encrypted calls are not allowed for
          # subdomain calls.
          sip_subdomain: nil,
          # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
          # the public Internet) or "Only my connections" (any connection assigned to the
          # same Telnyx user).
          sip_subdomain_receive_settings: nil
        )
        end

        sig do
          override.returns(
            {
              channel_limit: Integer,
              shaken_stir_enabled: T::Boolean,
              sip_subdomain: String,
              sip_subdomain_receive_settings:
                Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
            }
          )
        end
        def to_hash
        end

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLY_MY_CONNECTIONS =
            T.let(
              :only_my_connections,
              Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          FROM_ANYONE =
            T.let(
              :from_anyone,
              Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TexmlApplicationUpdateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Outbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TexmlApplicationUpdateParams::Outbound,
              Telnyx::Internal::AnyHash
            )
          end

        # When set, this will limit the total number of outbound calls to phone numbers
        # associated with this connection.
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
          # When set, this will limit the total number of outbound calls to phone numbers
          # associated with this connection.
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

      # HTTP request method Telnyx should use when requesting the status_callback URL.
      module StatusCallbackMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :get,
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :post,
            Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlApplicationUpdateParams::StatusCallbackMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # HTTP request method Telnyx will use to interact with your XML Translator
      # webhooks. Either 'get' or 'post'.
      module VoiceMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TexmlApplicationUpdateParams::VoiceMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :get,
            Telnyx::TexmlApplicationUpdateParams::VoiceMethod::TaggedSymbol
          )
        POST =
          T.let(
            :post,
            Telnyx::TexmlApplicationUpdateParams::VoiceMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlApplicationUpdateParams::VoiceMethod::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
