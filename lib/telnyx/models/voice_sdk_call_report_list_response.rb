# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceSDKCallReports#list
    class VoiceSDKCallReportListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute call_id
      #   Unique call identifier.
      #
      #   @return [String, nil]
      optional :call_id, String

      # @!attribute call_report_id
      #   User-scoped storage grouping identifier derived from the authenticated user.
      #   This is not a unique per-call report identifier and may be shared by multiple
      #   calls for the same user.
      #
      #   @return [String, nil]
      optional :call_report_id, String

      # @!attribute created_at
      #   Creation timestamp when present.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute flush_reason
      #   Reason the SDK flushed this stats report segment, for example an intermediate
      #   socket-close flush.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :flush_reason,
               Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
               api_name: :flushReason

      # @!attribute logs
      #   Raw logs payload emitted by the Voice SDK and stored without normalization. Live
      #   responses commonly return an array of log entries, but object-shaped log
      #   payloads are also allowed for compatibility.
      #
      #   @return [Array<Telnyx::Models::VoiceSDKCallReportLogEntry>, Telnyx::Models::VoiceSDKCallReportListResponse::Logs::Entries, nil]
      optional :logs, union: -> { Telnyx::Models::VoiceSDKCallReportListResponse::Logs }

      # @!attribute organization_id
      #   Organization associated with the stored call report when provided by the Voice
      #   SDK reporting path.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute segment
      #   Zero-based stats segment index when the SDK sends segmented or intermediate
      #   reports.
      #
      #   @return [Integer, nil]
      optional :segment, Integer

      # @!attribute stats
      #   Raw stats payload emitted by the Voice SDK and stored without normalization. The
      #   exact shape can vary by SDK platform and version. Live responses commonly return
      #   an array of interval snapshots, but object-shaped stats payloads are also
      #   allowed for compatibility.
      #
      #   @return [Array<Hash{Symbol=>Object}>, Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember1, nil]
      optional :stats, union: -> { Telnyx::Models::VoiceSDKCallReportListResponse::Stats }

      # @!attribute stored_at
      #   Time when the call report was stored.
      #
      #   @return [Time, nil]
      optional :stored_at, Time

      # @!attribute summary
      #   High-level call metadata.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :summary, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute telnyx_leg_id
      #   Telnyx call leg identifier for correlating the report with call-control, SIP,
      #   and media troubleshooting data.
      #
      #   @return [String, nil]
      optional :telnyx_leg_id, String

      # @!attribute telnyx_session_id
      #   Telnyx RTC session identifier for correlating the report with Voice SDK
      #   signaling and media-session logs.
      #
      #   @return [String, nil]
      optional :telnyx_session_id, String

      # @!attribute user_agent
      #   Voice SDK user agent string reported by the client. This is the preferred
      #   SDK/platform/version dimension when present.
      #
      #   @return [String, nil]
      optional :user_agent, String

      # @!attribute user_id
      #   Authenticated user that owns the call report.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute version
      #   Legacy SDK version value when the client reports one separately from the user
      #   agent.
      #
      #   @return [String, nil]
      optional :version, String

      # @!attribute voice_sdk_id
      #   Voice SDK instance identifier.
      #
      #   @return [String, nil]
      optional :voice_sdk_id, String

      # @!attribute voice_sdk_id_decoded
      #   Decoded Voice SDK identifier metadata emitted by voice-sdk-proxy when available.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :voice_sdk_id_decoded, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute voice_sdk_session_id
      #   Voice SDK session correlation identifier used to group stats segments for the
      #   same SDK session.
      #
      #   @return [String, nil]
      optional :voice_sdk_session_id, String

      # @!method initialize(call_id: nil, call_report_id: nil, created_at: nil, flush_reason: nil, logs: nil, organization_id: nil, segment: nil, stats: nil, stored_at: nil, summary: nil, telnyx_leg_id: nil, telnyx_session_id: nil, user_agent: nil, user_id: nil, version: nil, voice_sdk_id: nil, voice_sdk_id_decoded: nil, voice_sdk_session_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceSDKCallReportListResponse} for more details.
      #
      #   A raw call report stats JSON payload. The schema is intentionally permissive
      #   because Voice SDK clients can add fields over time.
      #
      #   @param call_id [String] Unique call identifier.
      #
      #   @param call_report_id [String] User-scoped storage grouping identifier derived from the authenticated user. Thi
      #
      #   @param created_at [Time] Creation timestamp when present.
      #
      #   @param flush_reason [Hash{Symbol=>Object}] Reason the SDK flushed this stats report segment, for example an intermediate so
      #
      #   @param logs [Array<Telnyx::Models::VoiceSDKCallReportLogEntry>, Telnyx::Models::VoiceSDKCallReportListResponse::Logs::Entries] Raw logs payload emitted by the Voice SDK and stored without normalization. Live
      #
      #   @param organization_id [String] Organization associated with the stored call report when provided by the Voice S
      #
      #   @param segment [Integer] Zero-based stats segment index when the SDK sends segmented or intermediate repo
      #
      #   @param stats [Array<Hash{Symbol=>Object}>, Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember1] Raw stats payload emitted by the Voice SDK and stored without normalization. The
      #
      #   @param stored_at [Time] Time when the call report was stored.
      #
      #   @param summary [Hash{Symbol=>Object}] High-level call metadata.
      #
      #   @param telnyx_leg_id [String] Telnyx call leg identifier for correlating the report with call-control, SIP, an
      #
      #   @param telnyx_session_id [String] Telnyx RTC session identifier for correlating the report with Voice SDK signalin
      #
      #   @param user_agent [String] Voice SDK user agent string reported by the client. This is the preferred SDK/pl
      #
      #   @param user_id [String] Authenticated user that owns the call report.
      #
      #   @param version [String] Legacy SDK version value when the client reports one separately from the user ag
      #
      #   @param voice_sdk_id [String] Voice SDK instance identifier.
      #
      #   @param voice_sdk_id_decoded [Hash{Symbol=>Object}] Decoded Voice SDK identifier metadata emitted by voice-sdk-proxy when available.
      #
      #   @param voice_sdk_session_id [String] Voice SDK session correlation identifier used to group stats segments for the sa

      # Raw logs payload emitted by the Voice SDK and stored without normalization. Live
      # responses commonly return an array of log entries, but object-shaped log
      # payloads are also allowed for compatibility.
      #
      # @see Telnyx::Models::VoiceSDKCallReportListResponse#logs
      module Logs
        extend Telnyx::Internal::Type::Union

        # Raw log entries emitted by the Voice SDK.
        variant -> { Telnyx::Models::VoiceSDKCallReportListResponse::Logs::VoiceSDKCallReportLogEntryArray }

        # Raw logs object emitted by the Voice SDK when logs are grouped under an entries field.
        variant -> { Telnyx::Models::VoiceSDKCallReportListResponse::Logs::Entries }

        class Entries < Telnyx::Internal::Type::BaseModel
          # @!attribute entries
          #   Raw log entries when the SDK groups logs under an entries field.
          #
          #   @return [Array<Telnyx::Models::VoiceSDKCallReportLogEntry>, nil]
          optional :entries, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::VoiceSDKCallReportLogEntry] }

          # @!method initialize(entries: nil)
          #   Raw logs object emitted by the Voice SDK when logs are grouped under an entries
          #   field.
          #
          #   @param entries [Array<Telnyx::Models::VoiceSDKCallReportLogEntry>] Raw log entries when the SDK groups logs under an entries field.
        end

        # @!method self.variants
        #   @return [Array(Array<Telnyx::Models::VoiceSDKCallReportLogEntry>, Telnyx::Models::VoiceSDKCallReportListResponse::Logs::Entries)]

        # @type [Telnyx::Internal::Type::Converter]
        VoiceSDKCallReportLogEntryArray =
          Telnyx::Internal::Type::ArrayOf[-> { Telnyx::VoiceSDKCallReportLogEntry }]
      end

      # Raw stats payload emitted by the Voice SDK and stored without normalization. The
      # exact shape can vary by SDK platform and version. Live responses commonly return
      # an array of interval snapshots, but object-shaped stats payloads are also
      # allowed for compatibility.
      #
      # @see Telnyx::Models::VoiceSDKCallReportListResponse#stats
      module Stats
        extend Telnyx::Internal::Type::Union

        # Raw interval stats snapshots emitted by the Voice SDK.
        variant -> { Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember0Array }

        # Raw stats object emitted by the Voice SDK.
        variant -> { Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember1 }

        class UnionMember1 < Telnyx::Internal::Type::BaseModel
          # @!attribute audio
          #   Raw audio stats such as inbound/outbound packet, byte, jitter, packet-loss,
          #   bitrate, and audio-level metrics.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :audio, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute connection
          #   Raw connection stats such as round-trip time, packets, and bytes sent or
          #   received.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :connection, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute ice
          #   Raw ICE candidate-pair information, including selected pair, local/remote
          #   candidates, state, and nomination data when provided by the SDK.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :ice, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute transport
          #   Raw transport stats such as ICE state, DTLS state, SRTP cipher, TLS version, and
          #   selected-candidate-pair changes.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :transport, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!method initialize(audio: nil, connection: nil, ice: nil, transport: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember1} for more
          #   details.
          #
          #   Raw stats object emitted by the Voice SDK.
          #
          #   @param audio [Hash{Symbol=>Object}] Raw audio stats such as inbound/outbound packet, byte, jitter, packet-loss, bitr
          #
          #   @param connection [Hash{Symbol=>Object}] Raw connection stats such as round-trip time, packets, and bytes sent or receive
          #
          #   @param ice [Hash{Symbol=>Object}] Raw ICE candidate-pair information, including selected pair, local/remote candid
          #
          #   @param transport [Hash{Symbol=>Object}] Raw transport stats such as ICE state, DTLS state, SRTP cipher, TLS version, and
        end

        # @!method self.variants
        #   @return [Array(Array<Hash{Symbol=>Object}>, Telnyx::Models::VoiceSDKCallReportListResponse::Stats::UnionMember1)]

        # @type [Telnyx::Internal::Type::Converter]
        UnionMember0Array =
          Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]
      end
    end
  end
end
