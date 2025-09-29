# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallSiprecJsonParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::CallSiprecJsonParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_sid

          # The name of the connector to use for the SIPREC session.
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
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::OrBoolean
              )
            )
          end
          attr_reader :include_metadata_custom_headers

          sig do
            params(
              include_metadata_custom_headers:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::OrBoolean
            ).void
          end
          attr_writer :include_metadata_custom_headers

          # Name of the SIPREC session. May be used to stop the SIPREC session from TeXML
          # instruction.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
          # you need to configure SRS port in your connector to 5061.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::OrBoolean
              )
            )
          end
          attr_reader :secure

          sig do
            params(
              secure:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::OrBoolean
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
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::OrSymbol
              )
            )
          end
          attr_reader :sip_transport

          sig do
            params(
              sip_transport:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::OrSymbol
            ).void
          end
          attr_writer :sip_transport

          # URL destination for Telnyx to send status callback events to for the siprec
          # session.
          sig { returns(T.nilable(String)) }
          attr_reader :status_callback

          sig { params(status_callback: String).void }
          attr_writer :status_callback

          # HTTP request type used for `StatusCallback`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :status_callback_method

          sig do
            params(
              status_callback_method:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::OrSymbol
            ).void
          end
          attr_writer :status_callback_method

          # The track to be used for siprec session. Can be `both_tracks`, `inbound_track`
          # or `outbound_track`. Defaults to `both_tracks`.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::OrSymbol
              )
            )
          end
          attr_reader :track

          sig do
            params(
              track:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::OrSymbol
            ).void
          end
          attr_writer :track

          sig do
            params(
              account_sid: String,
              connector_name: String,
              include_metadata_custom_headers:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::OrBoolean,
              name: String,
              secure:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::OrBoolean,
              session_timeout_secs: Integer,
              sip_transport:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::OrSymbol,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::OrSymbol,
              track:
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account_sid:,
            # The name of the connector to use for the SIPREC session.
            connector_name: nil,
            # When set, custom parameters will be added as metadata
            # (recording.session.ExtensionParameters). Otherwise, they’ll be added to sip
            # headers.
            include_metadata_custom_headers: nil,
            # Name of the SIPREC session. May be used to stop the SIPREC session from TeXML
            # instruction.
            name: nil,
            # Controls whether to encrypt media sent to your SRS using SRTP and TLS. When set
            # you need to configure SRS port in your connector to 5061.
            secure: nil,
            # Sets `Session-Expires` header to the INVITE. A reinvite is sent every half the
            # value set. Usefull for session keep alive. Minimum value is 90, set to 0 to
            # disable.
            session_timeout_secs: nil,
            # Specifies SIP transport protocol.
            sip_transport: nil,
            # URL destination for Telnyx to send status callback events to for the siprec
            # session.
            status_callback: nil,
            # HTTP request type used for `StatusCallback`.
            status_callback_method: nil,
            # The track to be used for siprec session. Can be `both_tracks`, `inbound_track`
            # or `outbound_track`. Defaults to `both_tracks`.
            track: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account_sid: String,
                connector_name: String,
                include_metadata_custom_headers:
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::OrBoolean,
                name: String,
                secure:
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::OrBoolean,
                session_timeout_secs: Integer,
                sip_transport:
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::OrSymbol,
                status_callback: String,
                status_callback_method:
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::OrSymbol,
                track:
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::OrSymbol,
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
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            TRUE =
              T.let(
                true,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::TaggedBoolean
              )
            FALSE =
              T.let(
                false,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::IncludeMetadataCustomHeaders::TaggedBoolean
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
                T.all(
                  T::Boolean,
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            TRUE =
              T.let(
                true,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::TaggedBoolean
              )
            FALSE =
              T.let(
                false,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Secure::TaggedBoolean
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
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UDP =
              T.let(
                :udp,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::TaggedSymbol
              )
            TCP =
              T.let(
                :tcp,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::TaggedSymbol
              )
            TLS =
              T.let(
                :tls,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::SipTransport::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # HTTP request type used for `StatusCallback`.
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::StatusCallbackMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The track to be used for siprec session. Can be `both_tracks`, `inbound_track`
          # or `outbound_track`. Defaults to `both_tracks`.
          module Track
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Track
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOTH_TRACKS =
              T.let(
                :both_tracks,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::TaggedSymbol
              )
            INBOUND_TRACK =
              T.let(
                :inbound_track,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::TaggedSymbol
              )
            OUTBOUND_TRACK =
              T.let(
                :outbound_track,
                Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallSiprecJsonParams::Track::TaggedSymbol
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
end
