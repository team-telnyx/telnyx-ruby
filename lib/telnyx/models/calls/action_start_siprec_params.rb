# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_siprec
      class ActionStartSiprecParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connector_name
        #   Name of configured SIPREC connector to be used.
        #
        #   @return [String, nil]
        optional :connector_name, String

        # @!attribute include_metadata_custom_headers
        #   When set, custom parameters will be added as metadata
        #   (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
        #   headers.
        #
        #   @return [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders, nil]
        optional :include_metadata_custom_headers,
                 enum: -> { Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders }

        # @!attribute secure
        #   Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
        #   you need to configure SRS port in your connector to 5061.
        #
        #   @return [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::Secure, nil]
        optional :secure, enum: -> { Telnyx::Calls::ActionStartSiprecParams::Secure }

        # @!attribute session_timeout_secs
        #   Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
        #   value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
        #   disable.
        #
        #   @return [Integer, nil]
        optional :session_timeout_secs, Integer

        # @!attribute sip_transport
        #   Specifies SIP transport protocol.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SipTransport, nil]
        optional :sip_transport, enum: -> { Telnyx::Calls::ActionStartSiprecParams::SipTransport }

        # @!attribute siprec_track
        #   Specifies which track should be sent on siprec session.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SiprecTrack, nil]
        optional :siprec_track, enum: -> { Telnyx::Calls::ActionStartSiprecParams::SiprecTrack }

        # @!method initialize(client_state: nil, connector_name: nil, include_metadata_custom_headers: nil, secure: nil, session_timeout_secs: nil, sip_transport: nil, siprec_track: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartSiprecParams} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param connector_name [String] Name of configured SIPREC connector to be used.
        #
        #   @param include_metadata_custom_headers [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders] When set, custom parameters will be added as metadata (recording.session.Extensi
        #
        #   @param secure [Boolean, Telnyx::Models::Calls::ActionStartSiprecParams::Secure] Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
        #
        #   @param session_timeout_secs [Integer] Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the v
        #
        #   @param sip_transport [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SipTransport] Specifies SIP transport protocol.
        #
        #   @param siprec_track [Symbol, Telnyx::Models::Calls::ActionStartSiprecParams::SiprecTrack] Specifies which track should be sent on siprec session.
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

        # Specifies which track should be sent on siprec session.
        module SiprecTrack
          extend Telnyx::Internal::Type::Enum

          INBOUND_TRACK = :inbound_track
          OUTBOUND_TRACK = :outbound_track
          BOTH_TRACKS = :both_tracks

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
