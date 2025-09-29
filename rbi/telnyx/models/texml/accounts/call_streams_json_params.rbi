# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallStreamsJsonParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::CallStreamsJsonParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :account_sid

          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::OrSymbol
              )
            )
          end
          attr_reader :bidirectional_codec

          sig do
            params(
              bidirectional_codec:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::OrSymbol
            ).void
          end
          attr_writer :bidirectional_codec

          # Configures method of bidirectional streaming (mp3, rtp).
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::OrSymbol
              )
            )
          end
          attr_reader :bidirectional_mode

          sig do
            params(
              bidirectional_mode:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::OrSymbol
            ).void
          end
          attr_writer :bidirectional_mode

          # The user specified name of Stream.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Url where status callbacks will be sent.
          sig { returns(T.nilable(String)) }
          attr_reader :status_callback

          sig { params(status_callback: String).void }
          attr_writer :status_callback

          # HTTP method used to send status callbacks.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::OrSymbol
              )
            )
          end
          attr_reader :status_callback_method

          sig do
            params(
              status_callback_method:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::OrSymbol
            ).void
          end
          attr_writer :status_callback_method

          # Tracks to be included in the stream
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::OrSymbol
              )
            )
          end
          attr_reader :track

          sig do
            params(
              track:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::OrSymbol
            ).void
          end
          attr_writer :track

          # The destination WebSocket address where the stream is going to be delivered.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              account_sid: String,
              bidirectional_codec:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::OrSymbol,
              bidirectional_mode:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::OrSymbol,
              name: String,
              status_callback: String,
              status_callback_method:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::OrSymbol,
              track:
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::OrSymbol,
              url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            account_sid:,
            # Indicates codec for bidirectional streaming RTP payloads. Used only with
            # stream_bidirectional_mode=rtp. Case sensitive.
            bidirectional_codec: nil,
            # Configures method of bidirectional streaming (mp3, rtp).
            bidirectional_mode: nil,
            # The user specified name of Stream.
            name: nil,
            # Url where status callbacks will be sent.
            status_callback: nil,
            # HTTP method used to send status callbacks.
            status_callback_method: nil,
            # Tracks to be included in the stream
            track: nil,
            # The destination WebSocket address where the stream is going to be delivered.
            url: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                account_sid: String,
                bidirectional_codec:
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::OrSymbol,
                bidirectional_mode:
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::OrSymbol,
                name: String,
                status_callback: String,
                status_callback_method:
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::OrSymbol,
                track:
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::OrSymbol,
                url: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          module BidirectionalCodec
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PCMU =
              T.let(
                :PCMU,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::TaggedSymbol
              )
            PCMA =
              T.let(
                :PCMA,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::TaggedSymbol
              )
            G722 =
              T.let(
                :G722,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Configures method of bidirectional streaming (mp3, rtp).
          module BidirectionalMode
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MP3 =
              T.let(
                :mp3,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::TaggedSymbol
              )
            RTP =
              T.let(
                :rtp,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # HTTP method used to send status callbacks.
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GET =
              T.let(
                :GET,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::TaggedSymbol
              )
            POST =
              T.let(
                :POST,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Tracks to be included in the stream
          module Track
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::Track
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INBOUND_TRACK =
              T.let(
                :inbound_track,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::TaggedSymbol
              )
            OUTBOUND_TRACK =
              T.let(
                :outbound_track,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::TaggedSymbol
              )
            BOTH_TRACKS =
              T.let(
                :both_tracks,
                Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallStreamsJsonParams::Track::TaggedSymbol
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
