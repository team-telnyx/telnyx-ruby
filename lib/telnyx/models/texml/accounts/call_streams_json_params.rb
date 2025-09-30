# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#streams_json
        class CallStreamsJsonParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute account_sid
          #
          #   @return [String]
          required :account_sid, String

          # @!attribute bidirectional_codec
          #   Indicates codec for bidirectional streaming RTP payloads. Used only with
          #   stream_bidirectional_mode=rtp. Case sensitive.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec, nil]
          optional :bidirectional_codec,
                   enum: -> { Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec },
                   api_name: :BidirectionalCodec

          # @!attribute bidirectional_mode
          #   Configures method of bidirectional streaming (mp3, rtp).
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode, nil]
          optional :bidirectional_mode,
                   enum: -> { Telnyx::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode },
                   api_name: :BidirectionalMode

          # @!attribute name
          #   The user specified name of Stream.
          #
          #   @return [String, nil]
          optional :name, String, api_name: :Name

          # @!attribute status_callback
          #   Url where status callbacks will be sent.
          #
          #   @return [String, nil]
          optional :status_callback, String, api_name: :StatusCallback

          # @!attribute status_callback_method
          #   HTTP method used to send status callbacks.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod, nil]
          optional :status_callback_method,
                   enum: -> { Telnyx::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod },
                   api_name: :StatusCallbackMethod

          # @!attribute track
          #   Tracks to be included in the stream
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::Track, nil]
          optional :track,
                   enum: -> {
                     Telnyx::Texml::Accounts::CallStreamsJsonParams::Track
                   },
                   api_name: :Track

          # @!attribute url
          #   The destination WebSocket address where the stream is going to be delivered.
          #
          #   @return [String, nil]
          optional :url, String, api_name: :Url

          # @!method initialize(account_sid:, bidirectional_codec: nil, bidirectional_mode: nil, name: nil, status_callback: nil, status_callback_method: nil, track: nil, url: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::CallStreamsJsonParams} for more details.
          #
          #   @param account_sid [String]
          #
          #   @param bidirectional_codec [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalCodec] Indicates codec for bidirectional streaming RTP payloads. Used only with
          #   stream\_
          #
          #   @param bidirectional_mode [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::BidirectionalMode] Configures method of bidirectional streaming (mp3, rtp).
          #
          #   @param name [String] The user specified name of Stream.
          #
          #   @param status_callback [String] Url where status callbacks will be sent.
          #
          #   @param status_callback_method [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::StatusCallbackMethod] HTTP method used to send status callbacks.
          #
          #   @param track [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonParams::Track] Tracks to be included in the stream
          #
          #   @param url [String] The destination WebSocket address where the stream is going to be delivered.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # Indicates codec for bidirectional streaming RTP payloads. Used only with
          # stream_bidirectional_mode=rtp. Case sensitive.
          module BidirectionalCodec
            extend Telnyx::Internal::Type::Enum

            PCMU = :PCMU
            PCMA = :PCMA
            G722 = :G722

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Configures method of bidirectional streaming (mp3, rtp).
          module BidirectionalMode
            extend Telnyx::Internal::Type::Enum

            MP3 = :mp3
            RTP = :rtp

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # HTTP method used to send status callbacks.
          module StatusCallbackMethod
            extend Telnyx::Internal::Type::Enum

            GET = :GET
            POST = :POST

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Tracks to be included in the stream
          module Track
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
end
