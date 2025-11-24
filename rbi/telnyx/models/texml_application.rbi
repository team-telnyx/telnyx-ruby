# typed: strong

module Telnyx
  module Models
    class TexmlApplication < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TexmlApplication, Telnyx::Internal::AnyHash)
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

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::TaggedSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # Specifies if call cost webhooks should be sent for this TeXML Application.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig { returns(T.nilable(Telnyx::DtmfType::TaggedSymbol)) }
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

      # A user-assigned name to help manage the application.
      sig { returns(T.nilable(String)) }
      attr_reader :friendly_name

      sig { params(friendly_name: String).void }
      attr_writer :friendly_name

      sig { returns(T.nilable(Telnyx::TexmlApplication::Inbound)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::TexmlApplication::Inbound::OrHash).void }
      attr_writer :inbound

      sig { returns(T.nilable(Telnyx::TexmlApplication::Outbound)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::TexmlApplication::Outbound::OrHash).void }
      attr_writer :outbound

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

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
            Telnyx::TexmlApplication::StatusCallbackMethod::TaggedSymbol
          )
        )
      end
      attr_reader :status_callback_method

      sig do
        params(
          status_callback_method:
            Telnyx::TexmlApplication::StatusCallbackMethod::OrSymbol
        ).void
      end
      attr_writer :status_callback_method

      # Tags associated with the Texml Application.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      # response from your voice_url.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_fallback_url

      sig { params(voice_fallback_url: String).void }
      attr_writer :voice_fallback_url

      # HTTP request method Telnyx will use to interact with your XML Translator
      # webhooks. Either 'get' or 'post'.
      sig do
        returns(T.nilable(Telnyx::TexmlApplication::VoiceMethod::TaggedSymbol))
      end
      attr_reader :voice_method

      sig do
        params(
          voice_method: Telnyx::TexmlApplication::VoiceMethod::OrSymbol
        ).void
      end
      attr_writer :voice_method

      # URL to which Telnyx will deliver your XML Translator webhooks.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_url

      sig { params(voice_url: String).void }
      attr_writer :voice_url

      sig do
        params(
          id: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          created_at: String,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          first_command_timeout: T::Boolean,
          first_command_timeout_secs: Integer,
          friendly_name: String,
          inbound: Telnyx::TexmlApplication::Inbound::OrHash,
          outbound: Telnyx::TexmlApplication::Outbound::OrHash,
          record_type: String,
          status_callback: String,
          status_callback_method:
            Telnyx::TexmlApplication::StatusCallbackMethod::OrSymbol,
          tags: T::Array[String],
          updated_at: String,
          voice_fallback_url: String,
          voice_method: Telnyx::TexmlApplication::VoiceMethod::OrSymbol,
          voice_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the resource.
        id: nil,
        # Specifies whether the connection can be used.
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Specifies if call cost webhooks should be sent for this TeXML Application.
        call_cost_in_webhooks: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Specifies whether calls to phone numbers associated with this connection should
        # hangup after timing out.
        first_command_timeout: nil,
        # Specifies how many seconds to wait before timing out a dial command.
        first_command_timeout_secs: nil,
        # A user-assigned name to help manage the application.
        friendly_name: nil,
        inbound: nil,
        outbound: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # URL for Telnyx to send requests to containing information about call progress
        # events.
        status_callback: nil,
        # HTTP request method Telnyx should use when requesting the status_callback URL.
        status_callback_method: nil,
        # Tags associated with the Texml Application.
        tags: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # URL to which Telnyx will deliver your XML Translator webhooks if we get an error
        # response from your voice_url.
        voice_fallback_url: nil,
        # HTTP request method Telnyx will use to interact with your XML Translator
        # webhooks. Either 'get' or 'post'.
        voice_method: nil,
        # URL to which Telnyx will deliver your XML Translator webhooks.
        voice_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
            call_cost_in_webhooks: T::Boolean,
            created_at: String,
            dtmf_type: Telnyx::DtmfType::TaggedSymbol,
            first_command_timeout: T::Boolean,
            first_command_timeout_secs: Integer,
            friendly_name: String,
            inbound: Telnyx::TexmlApplication::Inbound,
            outbound: Telnyx::TexmlApplication::Outbound,
            record_type: String,
            status_callback: String,
            status_callback_method:
              Telnyx::TexmlApplication::StatusCallbackMethod::TaggedSymbol,
            tags: T::Array[String],
            updated_at: String,
            voice_fallback_url: String,
            voice_method: Telnyx::TexmlApplication::VoiceMethod::TaggedSymbol,
            voice_url: String
          }
        )
      end
      def to_hash
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::TexmlApplication::Inbound, Telnyx::Internal::AnyHash)
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
              Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          )
        end
        attr_reader :sip_subdomain_receive_settings

        sig do
          params(
            sip_subdomain_receive_settings:
              Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::OrSymbol
          ).void
        end
        attr_writer :sip_subdomain_receive_settings

        sig do
          params(
            channel_limit: Integer,
            shaken_stir_enabled: T::Boolean,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::OrSymbol
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
                Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
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
                Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLY_MY_CONNECTIONS =
            T.let(
              :only_my_connections,
              Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          FROM_ANYONE =
            T.let(
              :from_anyone,
              Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TexmlApplication::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
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
            T.any(Telnyx::TexmlApplication::Outbound, Telnyx::Internal::AnyHash)
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
            T.all(Symbol, Telnyx::TexmlApplication::StatusCallbackMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET =
          T.let(
            :get,
            Telnyx::TexmlApplication::StatusCallbackMethod::TaggedSymbol
          )
        POST =
          T.let(
            :post,
            Telnyx::TexmlApplication::StatusCallbackMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TexmlApplication::StatusCallbackMethod::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Telnyx::TexmlApplication::VoiceMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GET = T.let(:get, Telnyx::TexmlApplication::VoiceMethod::TaggedSymbol)
        POST = T.let(:post, Telnyx::TexmlApplication::VoiceMethod::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::TexmlApplication::VoiceMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
