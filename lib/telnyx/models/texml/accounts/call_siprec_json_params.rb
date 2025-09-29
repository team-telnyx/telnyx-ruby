# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#siprec_json
        class CallSiprecJsonParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!attribute connector_name
          #   The name of the connector to use for the SIPREC session.
          #
          #   @return [String, nil]
          optional :connector_name, String, api_name: :ConnectorName

          # @!attribute include_metadata_custom_headers
          #   When set, custom parameters will be added as metadata
          #   (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
          #   headers.
          #
          #   @return [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders, nil]
          optional :include_metadata_custom_headers,
                   enum: -> { Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders },
                   api_name: :IncludeMetadataCustomHeaders

          # @!attribute name
          #   Name of the SIPREC session. May be used to stop the SIPREC session from TeXML
          #   instruction.
          #
          #   @return [String, nil]
          optional :name, String, api_name: :Name

          # @!attribute secure
          #   Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          #   you need to configure SRS port in your connector to 5061.
          #
          #   @return [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Secure, nil]
          optional :secure,
                   enum: -> {
                     Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure
                   },
                   api_name: :Secure

          # @!attribute session_timeout_secs
          #   Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
          #   value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
          #   disable.
          #
          #   @return [Integer, nil]
          optional :session_timeout_secs, Integer, api_name: :SessionTimeoutSecs

          # @!attribute sip_transport
          #   Specifies SIP transport protocol.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::SipTransport, nil]
          optional :sip_transport,
                   enum: -> { Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport },
                   api_name: :SipTransport

          # @!attribute status_callback
          #   URL destination for Telnyx to send status callback events to for the siprec
          #   session.
          #
          #   @return [String, nil]
          optional :status_callback, String, api_name: :StatusCallback

          # @!attribute status_callback_method
          #   HTTP request type used for `StatusCallback`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod, nil]
          optional :status_callback_method,
                   enum: -> { Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod },
                   api_name: :StatusCallbackMethod

          # @!attribute track
          #   The track to be used for siprec session. Can be `both_tracks`, `inbound_track`
          #   or `outbound_track`. Defaults to `both_tracks`.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Track, nil]
          optional :track, enum: -> { Telnyx::Texml::Accounts::CallSiprecJsonParams::Track }, api_name: :Track

          # @!method initialize(account_sid:, connector_name: nil, include_metadata_custom_headers: nil, name: nil, secure: nil, session_timeout_secs: nil, sip_transport: nil, status_callback: nil, status_callback_method: nil, track: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::CallSiprecJsonParams} for more details.
          #
          #   @param account_sid [String]
          #
          #   @param connector_name [String] The name of the connector to use for the SIPREC session.
          #
          #   @param include_metadata_custom_headers [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders] When set, custom parameters will be added as metadata (recording.session.Extensi
          #
          #   @param name [String] Name of the SIPREC session. May be used to stop the SIPREC session from TeXML in
          #
          #   @param secure [Boolean, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Secure] Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          #
          #   @param session_timeout_secs [Integer] Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the v
          #
          #   @param sip_transport [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::SipTransport] Specifies SIP transport protocol.
          #
          #   @param status_callback [String] URL destination for Telnyx to send status callback events to for the siprec sess
          #
          #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod] HTTP request type used for `StatusCallback`.
          #
          #   @param track [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonParams::Track] The track to be used for siprec session. Can be `both_tracks`, `inbound_track` o
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # When set, custom parameters will be added as metadata
          # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
          # headers.
          module IncludeMetadataCustomHeaders
            extend Telnyx::Internal::Type::Enum

            TRUE = true
            FALSE = false

            # @!method self.values
            #   @return [Array<Boolean>]
          end

          # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          # you need to configure SRS port in your connector to 5061.
          module Secure
            extend Telnyx::Internal::Type::Enum

            TRUE = true
            FALSE = false

            # @!method self.values
            #   @return [Array<Boolean>]
          end

          # Specifies SIP transport protocol.
          module SipTransport
            extend Telnyx::Internal::Type::Enum

            UDP = :udp
            TCP = :tcp
            TLS = :tls

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # HTTP request type used for `StatusCallback`.
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The track to be used for siprec session. Can be `both_tracks`, `inbound_track`
          # or `outbound_track`. Defaults to `both_tracks`.
          module Track
            extend Telnyx::Internal::Type::Enum

            BOTH_TRACKS = :both_tracks
            INBOUND_TRACK = :inbound_track
            OUTBOUND_TRACK = :outbound_track

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
