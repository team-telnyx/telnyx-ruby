# frozen_string_literal: true

module Telnyx
  module Models
    class CallHangup < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute event_type
      #   The type of event being delivered.
      #
      #   @return [Symbol, Telnyx::Models::CallHangup::EventType, nil]
      optional :event_type, enum: -> { Telnyx::CallHangup::EventType }

      # @!attribute occurred_at
      #   ISO 8601 datetime of when the event occurred.
      #
      #   @return [Time, nil]
      optional :occurred_at, Time

      # @!attribute payload
      #
      #   @return [Telnyx::Models::CallHangup::Payload, nil]
      optional :payload, -> { Telnyx::CallHangup::Payload }

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::CallHangup::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::CallHangup::RecordType }

      # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param event_type [Symbol, Telnyx::Models::CallHangup::EventType] The type of event being delivered.
      #
      #   @param occurred_at [Time] ISO 8601 datetime of when the event occurred.
      #
      #   @param payload [Telnyx::Models::CallHangup::Payload]
      #
      #   @param record_type [Symbol, Telnyx::Models::CallHangup::RecordType] Identifies the type of the resource.

      # The type of event being delivered.
      #
      # @see Telnyx::Models::CallHangup#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CALL_HANGUP = :"call.hangup"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CallHangup#payload
      class Payload < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   Call ID used to issue commands via Call Control API.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_quality_stats
        #   Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
        #   includes metrics that are available (filters out nil values). Returns nil if no
        #   metrics are available.
        #
        #   @return [Telnyx::Models::CallHangup::Payload::CallQualityStats, nil]
        optional :call_quality_stats, -> { Telnyx::CallHangup::Payload::CallQualityStats }, nil?: true

        # @!attribute call_session_id
        #   ID that is unique to the call session and can be used to correlate webhook
        #   events. Call session is a group of related call legs that logically belong to
        #   the same phone call, e.g. an inbound and outbound leg of a transferred call.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute client_state
        #   State received from a command.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute connection_id
        #   Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute custom_headers
        #   Custom headers set on answer command
        #
        #   @return [Array<Telnyx::Models::CustomSipHeader>, nil]
        optional :custom_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CustomSipHeader] }

        # @!attribute from
        #   Number or SIP URI placing the call.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute hangup_cause
        #   The reason the call was ended (`call_rejected`, `normal_clearing`,
        #   `originator_cancel`, `timeout`, `time_limit`, `user_busy`, `not_found`,
        #   `no_answer` or `unspecified`).
        #
        #   @return [Symbol, Telnyx::Models::CallHangup::Payload::HangupCause, nil]
        optional :hangup_cause, enum: -> { Telnyx::CallHangup::Payload::HangupCause }

        # @!attribute hangup_source
        #   The party who ended the call (`callee`, `caller`, `unknown`).
        #
        #   @return [Symbol, Telnyx::Models::CallHangup::Payload::HangupSource, nil]
        optional :hangup_source, enum: -> { Telnyx::CallHangup::Payload::HangupSource }

        # @!attribute sip_hangup_cause
        #   The reason the call was ended (SIP response code). If the SIP response is
        #   unavailable (in inbound calls for example) this is set to `unspecified`.
        #
        #   @return [String, nil]
        optional :sip_hangup_cause, String

        # @!attribute sip_headers
        #   User-to-User and Diversion headers from sip invite.
        #
        #   @return [Array<Telnyx::Models::SipHeader>, nil]
        optional :sip_headers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::SipHeader] }

        # @!attribute start_time
        #   ISO 8601 datetime of when the call started.
        #
        #   @return [Time, nil]
        optional :start_time, Time

        # @!attribute state
        #   State received from a command.
        #
        #   @return [Symbol, Telnyx::Models::CallHangup::Payload::State, nil]
        optional :state, enum: -> { Telnyx::CallHangup::Payload::State }

        # @!attribute tags
        #   Array of tags associated to number.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute to
        #   Destination number or SIP URI of the call.
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_quality_stats: nil, call_session_id: nil, client_state: nil, connection_id: nil, custom_headers: nil, from: nil, hangup_cause: nil, hangup_source: nil, sip_hangup_cause: nil, sip_headers: nil, start_time: nil, state: nil, tags: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CallHangup::Payload} for more details.
        #
        #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
        #
        #   @param call_leg_id [String] ID that is unique to the call and can be used to correlate webhook events.
        #
        #   @param call_quality_stats [Telnyx::Models::CallHangup::Payload::CallQualityStats, nil] Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
        #
        #   @param call_session_id [String] ID that is unique to the call session and can be used to correlate webhook event
        #
        #   @param client_state [String] State received from a command.
        #
        #   @param connection_id [String] Call Control App ID (formerly Telnyx connection ID) used in the call.
        #
        #   @param custom_headers [Array<Telnyx::Models::CustomSipHeader>] Custom headers set on answer command
        #
        #   @param from [String] Number or SIP URI placing the call.
        #
        #   @param hangup_cause [Symbol, Telnyx::Models::CallHangup::Payload::HangupCause] The reason the call was ended (`call_rejected`, `normal_clearing`, `originator_c
        #
        #   @param hangup_source [Symbol, Telnyx::Models::CallHangup::Payload::HangupSource] The party who ended the call (`callee`, `caller`, `unknown`).
        #
        #   @param sip_hangup_cause [String] The reason the call was ended (SIP response code). If the SIP response is unavai
        #
        #   @param sip_headers [Array<Telnyx::Models::SipHeader>] User-to-User and Diversion headers from sip invite.
        #
        #   @param start_time [Time] ISO 8601 datetime of when the call started.
        #
        #   @param state [Symbol, Telnyx::Models::CallHangup::Payload::State] State received from a command.
        #
        #   @param tags [Array<String>] Array of tags associated to number.
        #
        #   @param to [String] Destination number or SIP URI of the call.

        # @see Telnyx::Models::CallHangup::Payload#call_quality_stats
        class CallQualityStats < Telnyx::Internal::Type::BaseModel
          # @!attribute inbound
          #   Inbound call quality statistics.
          #
          #   @return [Telnyx::Models::CallHangup::Payload::CallQualityStats::Inbound, nil]
          optional :inbound, -> { Telnyx::CallHangup::Payload::CallQualityStats::Inbound }

          # @!attribute outbound
          #   Outbound call quality statistics.
          #
          #   @return [Telnyx::Models::CallHangup::Payload::CallQualityStats::Outbound, nil]
          optional :outbound, -> { Telnyx::CallHangup::Payload::CallQualityStats::Outbound }

          # @!method initialize(inbound: nil, outbound: nil)
          #   Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
          #   includes metrics that are available (filters out nil values). Returns nil if no
          #   metrics are available.
          #
          #   @param inbound [Telnyx::Models::CallHangup::Payload::CallQualityStats::Inbound] Inbound call quality statistics.
          #
          #   @param outbound [Telnyx::Models::CallHangup::Payload::CallQualityStats::Outbound] Outbound call quality statistics.

          # @see Telnyx::Models::CallHangup::Payload::CallQualityStats#inbound
          class Inbound < Telnyx::Internal::Type::BaseModel
            # @!attribute jitter_max_variance
            #   Maximum jitter variance for inbound audio.
            #
            #   @return [String, nil]
            optional :jitter_max_variance, String

            # @!attribute jitter_packet_count
            #   Number of packets used for jitter calculation on inbound audio.
            #
            #   @return [String, nil]
            optional :jitter_packet_count, String

            # @!attribute mos
            #   Mean Opinion Score (MOS) for inbound audio quality.
            #
            #   @return [String, nil]
            optional :mos, String

            # @!attribute packet_count
            #   Total number of inbound audio packets.
            #
            #   @return [String, nil]
            optional :packet_count, String

            # @!attribute skip_packet_count
            #   Number of skipped inbound packets (packet loss).
            #
            #   @return [String, nil]
            optional :skip_packet_count, String

            # @!method initialize(jitter_max_variance: nil, jitter_packet_count: nil, mos: nil, packet_count: nil, skip_packet_count: nil)
            #   Inbound call quality statistics.
            #
            #   @param jitter_max_variance [String] Maximum jitter variance for inbound audio.
            #
            #   @param jitter_packet_count [String] Number of packets used for jitter calculation on inbound audio.
            #
            #   @param mos [String] Mean Opinion Score (MOS) for inbound audio quality.
            #
            #   @param packet_count [String] Total number of inbound audio packets.
            #
            #   @param skip_packet_count [String] Number of skipped inbound packets (packet loss).
          end

          # @see Telnyx::Models::CallHangup::Payload::CallQualityStats#outbound
          class Outbound < Telnyx::Internal::Type::BaseModel
            # @!attribute packet_count
            #   Total number of outbound audio packets.
            #
            #   @return [String, nil]
            optional :packet_count, String

            # @!attribute skip_packet_count
            #   Number of skipped outbound packets (packet loss).
            #
            #   @return [String, nil]
            optional :skip_packet_count, String

            # @!method initialize(packet_count: nil, skip_packet_count: nil)
            #   Outbound call quality statistics.
            #
            #   @param packet_count [String] Total number of outbound audio packets.
            #
            #   @param skip_packet_count [String] Number of skipped outbound packets (packet loss).
          end
        end

        # The reason the call was ended (`call_rejected`, `normal_clearing`,
        # `originator_cancel`, `timeout`, `time_limit`, `user_busy`, `not_found`,
        # `no_answer` or `unspecified`).
        #
        # @see Telnyx::Models::CallHangup::Payload#hangup_cause
        module HangupCause
          extend Telnyx::Internal::Type::Enum

          CALL_REJECTED = :call_rejected
          NORMAL_CLEARING = :normal_clearing
          ORIGINATOR_CANCEL = :originator_cancel
          TIMEOUT = :timeout
          TIME_LIMIT = :time_limit
          USER_BUSY = :user_busy
          NOT_FOUND = :not_found
          NO_ANSWER = :no_answer
          UNSPECIFIED = :unspecified

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The party who ended the call (`callee`, `caller`, `unknown`).
        #
        # @see Telnyx::Models::CallHangup::Payload#hangup_source
        module HangupSource
          extend Telnyx::Internal::Type::Enum

          CALLER = :caller
          CALLEE = :callee
          UNKNOWN = :unknown

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # State received from a command.
        #
        # @see Telnyx::Models::CallHangup::Payload#state
        module State
          extend Telnyx::Internal::Type::Enum

          HANGUP = :hangup

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::CallHangup#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EVENT = :event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
