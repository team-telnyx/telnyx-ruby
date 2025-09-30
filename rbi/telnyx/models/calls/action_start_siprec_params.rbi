# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartSiprecParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartSiprecParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Name of configured SIPREC connector to be used.
        sig { returns(T.nilable(String)) }
        attr_reader :connector_name

        sig { params(connector_name: String).void }
        attr_writer :connector_name

        # When set, custom parameters will be added as metadata
        # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
        # headers.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::OrBoolean
            )
          )
        end
        attr_reader :include_metadata_custom_headers

        sig do
          params(
            include_metadata_custom_headers:
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::OrBoolean
          ).void
        end
        attr_writer :include_metadata_custom_headers

        # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
        # you need to configure SRS port in your connector to 5061.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionStartSiprecParams::Secure::OrBoolean)
          )
        end
        attr_reader :secure

        sig do
          params(
            secure: Telnyx::Calls::ActionStartSiprecParams::Secure::OrBoolean
          ).void
        end
        attr_writer :secure

        # Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
        # value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
        # disable.
        sig { returns(T.nilable(Integer)) }
        attr_reader :session_timeout_secs

        sig { params(session_timeout_secs: Integer).void }
        attr_writer :session_timeout_secs

        # Specifies SIP transport protocol.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::OrSymbol
            )
          )
        end
        attr_reader :sip_transport

        sig do
          params(
            sip_transport:
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::OrSymbol
          ).void
        end
        attr_writer :sip_transport

        # Specifies which track should be sent on siprec session.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::OrSymbol
            )
          )
        end
        attr_reader :siprec_track

        sig do
          params(
            siprec_track:
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::OrSymbol
          ).void
        end
        attr_writer :siprec_track

        sig do
          params(
            client_state: String,
            connector_name: String,
            include_metadata_custom_headers:
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::OrBoolean,
            secure: Telnyx::Calls::ActionStartSiprecParams::Secure::OrBoolean,
            session_timeout_secs: Integer,
            sip_transport:
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::OrSymbol,
            siprec_track:
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Name of configured SIPREC connector to be used.
          connector_name: nil,
          # When set, custom parameters will be added as metadata
          # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
          # headers.
          include_metadata_custom_headers: nil,
          # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          # you need to configure SRS port in your connector to 5061.
          secure: nil,
          # Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
          # value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
          # disable.
          session_timeout_secs: nil,
          # Specifies SIP transport protocol.
          sip_transport: nil,
          # Specifies which track should be sent on siprec session.
          siprec_track: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              connector_name: String,
              include_metadata_custom_headers:
                Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::OrBoolean,
              secure: Telnyx::Calls::ActionStartSiprecParams::Secure::OrBoolean,
              session_timeout_secs: Integer,
              sip_transport:
                Telnyx::Calls::ActionStartSiprecParams::SipTransport::OrSymbol,
              siprec_track:
                Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # When set, custom parameters will be added as metadata
        # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
        # headers.
        module IncludeMetadataCustomHeaders
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::TaggedBoolean
            )
          FALSE =
            T.let(
              false,
              Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartSiprecParams::IncludeMetadataCustomHeaders::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
        # you need to configure SRS port in your connector to 5061.
        module Secure
          extend Telnyx::Internal::Type::Enum

          TaggedBoolean =
            T.type_alias do
              T.all(T::Boolean, Telnyx::Calls::ActionStartSiprecParams::Secure)
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::Calls::ActionStartSiprecParams::Secure::TaggedBoolean
            )
          FALSE =
            T.let(
              false,
              Telnyx::Calls::ActionStartSiprecParams::Secure::TaggedBoolean
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartSiprecParams::Secure::TaggedBoolean
              ]
            )
          end
          def self.values
          end
        end

        # Specifies SIP transport protocol.
        module SipTransport
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartSiprecParams::SipTransport
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UDP =
            T.let(
              :udp,
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::TaggedSymbol
            )
          TCP =
            T.let(
              :tcp,
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::TaggedSymbol
            )
          TLS =
            T.let(
              :tls,
              Telnyx::Calls::ActionStartSiprecParams::SipTransport::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartSiprecParams::SipTransport::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies which track should be sent on siprec session.
        module SiprecTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartSiprecParams::SiprecTrack)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND_TRACK =
            T.let(
              :inbound_track,
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::TaggedSymbol
            )
          OUTBOUND_TRACK =
            T.let(
              :outbound_track,
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::TaggedSymbol
            )
          BOTH_TRACKS =
            T.let(
              :both_tracks,
              Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartSiprecParams::SiprecTrack::TaggedSymbol
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
