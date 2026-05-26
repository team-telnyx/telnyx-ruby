# typed: strong

module Telnyx
  module Models
    class VoiceSDKCallReportRetrieveResponseItem < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique call identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :call_id

      sig { params(call_id: String).void }
      attr_writer :call_id

      # User-scoped storage grouping identifier derived from the authenticated user.
      # This is not a unique per-call report identifier and may be shared by multiple
      # calls for the same user.
      sig { returns(T.nilable(String)) }
      attr_reader :call_report_id

      sig { params(call_report_id: String).void }
      attr_writer :call_report_id

      # Creation timestamp when present.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Reason the SDK flushed this stats report segment, for example an intermediate
      # socket-close flush.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :flush_reason

      sig { params(flush_reason: T::Hash[Symbol, T.anything]).void }
      attr_writer :flush_reason

      # Raw logs payload emitted by the Voice SDK and stored without normalization. Live
      # responses commonly return an array of log entries, but object-shaped log
      # payloads are also allowed for compatibility.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Variants
          )
        )
      end
      attr_reader :logs

      sig do
        params(
          logs:
            T.any(
              T::Array[
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::OrHash
              ],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::OrHash
            )
        ).void
      end
      attr_writer :logs

      # Organization associated with the stored call report when provided by the Voice
      # SDK reporting path.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Zero-based stats segment index when the SDK sends segmented or intermediate
      # reports.
      sig { returns(T.nilable(Integer)) }
      attr_reader :segment

      sig { params(segment: Integer).void }
      attr_writer :segment

      # Raw stats payload emitted by the Voice SDK and stored without normalization. The
      # exact shape can vary by SDK platform and version. Live responses commonly return
      # an array of interval snapshots, but object-shaped stats payloads are also
      # allowed for compatibility.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::Variants
          )
        )
      end
      attr_reader :stats

      sig do
        params(
          stats:
            T.any(
              T::Array[T::Hash[Symbol, T.anything]],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::UnionMember1::OrHash
            )
        ).void
      end
      attr_writer :stats

      # Time when the call report was stored.
      sig { returns(T.nilable(Time)) }
      attr_reader :stored_at

      sig { params(stored_at: Time).void }
      attr_writer :stored_at

      # High-level call metadata.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :summary

      sig { params(summary: T::Hash[Symbol, T.anything]).void }
      attr_writer :summary

      # Telnyx call leg identifier for correlating the report with call-control, SIP,
      # and media troubleshooting data.
      sig { returns(T.nilable(String)) }
      attr_reader :telnyx_leg_id

      sig { params(telnyx_leg_id: String).void }
      attr_writer :telnyx_leg_id

      # Telnyx RTC session identifier for correlating the report with Voice SDK
      # signaling and media-session logs.
      sig { returns(T.nilable(String)) }
      attr_reader :telnyx_session_id

      sig { params(telnyx_session_id: String).void }
      attr_writer :telnyx_session_id

      # Voice SDK user agent string reported by the client. This is the preferred
      # SDK/platform/version dimension when present.
      sig { returns(T.nilable(String)) }
      attr_reader :user_agent

      sig { params(user_agent: String).void }
      attr_writer :user_agent

      # Authenticated user that owns the call report.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Legacy SDK version value when the client reports one separately from the user
      # agent.
      sig { returns(T.nilable(String)) }
      attr_reader :version

      sig { params(version: String).void }
      attr_writer :version

      # Voice SDK instance identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_sdk_id

      sig { params(voice_sdk_id: String).void }
      attr_writer :voice_sdk_id

      # Decoded Voice SDK identifier metadata emitted by voice-sdk-proxy when available.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :voice_sdk_id_decoded

      sig { params(voice_sdk_id_decoded: T::Hash[Symbol, T.anything]).void }
      attr_writer :voice_sdk_id_decoded

      # Voice SDK session correlation identifier used to group stats segments for the
      # same SDK session.
      sig { returns(T.nilable(String)) }
      attr_reader :voice_sdk_session_id

      sig { params(voice_sdk_session_id: String).void }
      attr_writer :voice_sdk_session_id

      # A raw call report stats JSON payload. The schema is intentionally permissive
      # because Voice SDK clients can add fields over time.
      sig do
        params(
          call_id: String,
          call_report_id: String,
          created_at: Time,
          flush_reason: T::Hash[Symbol, T.anything],
          logs:
            T.any(
              T::Array[
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::OrHash
              ],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::OrHash
            ),
          organization_id: String,
          segment: Integer,
          stats:
            T.any(
              T::Array[T::Hash[Symbol, T.anything]],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::UnionMember1::OrHash
            ),
          stored_at: Time,
          summary: T::Hash[Symbol, T.anything],
          telnyx_leg_id: String,
          telnyx_session_id: String,
          user_agent: String,
          user_id: String,
          version: String,
          voice_sdk_id: String,
          voice_sdk_id_decoded: T::Hash[Symbol, T.anything],
          voice_sdk_session_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique call identifier.
        call_id: nil,
        # User-scoped storage grouping identifier derived from the authenticated user.
        # This is not a unique per-call report identifier and may be shared by multiple
        # calls for the same user.
        call_report_id: nil,
        # Creation timestamp when present.
        created_at: nil,
        # Reason the SDK flushed this stats report segment, for example an intermediate
        # socket-close flush.
        flush_reason: nil,
        # Raw logs payload emitted by the Voice SDK and stored without normalization. Live
        # responses commonly return an array of log entries, but object-shaped log
        # payloads are also allowed for compatibility.
        logs: nil,
        # Organization associated with the stored call report when provided by the Voice
        # SDK reporting path.
        organization_id: nil,
        # Zero-based stats segment index when the SDK sends segmented or intermediate
        # reports.
        segment: nil,
        # Raw stats payload emitted by the Voice SDK and stored without normalization. The
        # exact shape can vary by SDK platform and version. Live responses commonly return
        # an array of interval snapshots, but object-shaped stats payloads are also
        # allowed for compatibility.
        stats: nil,
        # Time when the call report was stored.
        stored_at: nil,
        # High-level call metadata.
        summary: nil,
        # Telnyx call leg identifier for correlating the report with call-control, SIP,
        # and media troubleshooting data.
        telnyx_leg_id: nil,
        # Telnyx RTC session identifier for correlating the report with Voice SDK
        # signaling and media-session logs.
        telnyx_session_id: nil,
        # Voice SDK user agent string reported by the client. This is the preferred
        # SDK/platform/version dimension when present.
        user_agent: nil,
        # Authenticated user that owns the call report.
        user_id: nil,
        # Legacy SDK version value when the client reports one separately from the user
        # agent.
        version: nil,
        # Voice SDK instance identifier.
        voice_sdk_id: nil,
        # Decoded Voice SDK identifier metadata emitted by voice-sdk-proxy when available.
        voice_sdk_id_decoded: nil,
        # Voice SDK session correlation identifier used to group stats segments for the
        # same SDK session.
        voice_sdk_session_id: nil
      )
      end

      sig do
        override.returns(
          {
            call_id: String,
            call_report_id: String,
            created_at: Time,
            flush_reason: T::Hash[Symbol, T.anything],
            logs:
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Variants,
            organization_id: String,
            segment: Integer,
            stats:
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::Variants,
            stored_at: Time,
            summary: T::Hash[Symbol, T.anything],
            telnyx_leg_id: String,
            telnyx_session_id: String,
            user_agent: String,
            user_id: String,
            version: String,
            voice_sdk_id: String,
            voice_sdk_id_decoded: T::Hash[Symbol, T.anything],
            voice_sdk_session_id: String
          }
        )
      end
      def to_hash
      end

      # Raw logs payload emitted by the Voice SDK and stored without normalization. Live
      # responses commonly return an array of log entries, but object-shaped log
      # payloads are also allowed for compatibility.
      module Logs
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Array[
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0
              ],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries
            )
          end

        class UnionMember0 < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0,
                Telnyx::Internal::AnyHash
              )
            end

          # Raw structured context attached to the log entry.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :context

          sig { params(context: T::Hash[Symbol, T.anything]).void }
          attr_writer :context

          # Log level emitted by the SDK.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
              )
            )
          end
          attr_reader :level

          sig do
            params(
              level:
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::OrSymbol
            ).void
          end
          attr_writer :level

          # Log message.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # Time when the log entry was emitted.
          sig { returns(T.nilable(Time)) }
          attr_reader :timestamp

          sig { params(timestamp: Time).void }
          attr_writer :timestamp

          # A raw Voice SDK log entry. Additional SDK-specific fields may be present.
          sig do
            params(
              context: T::Hash[Symbol, T.anything],
              level:
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::OrSymbol,
              message: String,
              timestamp: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Raw structured context attached to the log entry.
            context: nil,
            # Log level emitted by the SDK.
            level: nil,
            # Log message.
            message: nil,
            # Time when the log entry was emitted.
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                context: T::Hash[Symbol, T.anything],
                level:
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol,
                message: String,
                timestamp: Time
              }
            )
          end
          def to_hash
          end

          # Log level emitted by the SDK.
          module Level
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEBUG =
              T.let(
                :debug,
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
              )
            INFO =
              T.let(
                :info,
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
              )
            WARN =
              T.let(
                :warn,
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0::Level::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Entries < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries,
                Telnyx::Internal::AnyHash
              )
            end

          # Raw log entries when the SDK groups logs under an entries field.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry
                ]
              )
            )
          end
          attr_reader :entries

          sig do
            params(
              entries:
                T::Array[
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::OrHash
                ]
            ).void
          end
          attr_writer :entries

          # Raw logs object emitted by the Voice SDK when logs are grouped under an entries
          # field.
          sig do
            params(
              entries:
                T::Array[
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Raw log entries when the SDK groups logs under an entries field.
            entries: nil
          )
          end

          sig do
            override.returns(
              {
                entries:
                  T::Array[
                    Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry
                  ]
              }
            )
          end
          def to_hash
          end

          class Entry < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry,
                  Telnyx::Internal::AnyHash
                )
              end

            # Raw structured context attached to the log entry.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :context

            sig { params(context: T::Hash[Symbol, T.anything]).void }
            attr_writer :context

            # Log level emitted by the SDK.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                )
              )
            end
            attr_reader :level

            sig do
              params(
                level:
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::OrSymbol
              ).void
            end
            attr_writer :level

            # Log message.
            sig { returns(T.nilable(String)) }
            attr_reader :message

            sig { params(message: String).void }
            attr_writer :message

            # Time when the log entry was emitted.
            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            # A raw Voice SDK log entry. Additional SDK-specific fields may be present.
            sig do
              params(
                context: T::Hash[Symbol, T.anything],
                level:
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::OrSymbol,
                message: String,
                timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Raw structured context attached to the log entry.
              context: nil,
              # Log level emitted by the SDK.
              level: nil,
              # Log message.
              message: nil,
              # Time when the log entry was emitted.
              timestamp: nil
            )
            end

            sig do
              override.returns(
                {
                  context: T::Hash[Symbol, T.anything],
                  level:
                    Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol,
                  message: String,
                  timestamp: Time
                }
              )
            end
            def to_hash
            end

            # Log level emitted by the SDK.
            module Level
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEBUG =
                T.let(
                  :debug,
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                )
              INFO =
                T.let(
                  :info,
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                )
              WARN =
                T.let(
                  :warn,
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                )
              ERROR =
                T.let(
                  :error,
                  Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Entries::Entry::Level::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::Variants
            ]
          )
        end
        def self.variants
        end

        UnionMember0Array =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Logs::UnionMember0
            ],
            Telnyx::Internal::Type::Converter
          )
      end

      # Raw stats payload emitted by the Voice SDK and stored without normalization. The
      # exact shape can vary by SDK platform and version. Live responses commonly return
      # an array of interval snapshots, but object-shaped stats payloads are also
      # allowed for compatibility.
      module Stats
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Array[T::Hash[Symbol, T.anything]],
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::UnionMember1
            )
          end

        class UnionMember1 < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::UnionMember1,
                Telnyx::Internal::AnyHash
              )
            end

          # Raw audio stats such as inbound/outbound packet, byte, jitter, packet-loss,
          # bitrate, and audio-level metrics.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :audio

          sig { params(audio: T::Hash[Symbol, T.anything]).void }
          attr_writer :audio

          # Raw connection stats such as round-trip time, packets, and bytes sent or
          # received.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :connection

          sig { params(connection: T::Hash[Symbol, T.anything]).void }
          attr_writer :connection

          # Raw ICE candidate-pair information, including selected pair, local/remote
          # candidates, state, and nomination data when provided by the SDK.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :ice

          sig { params(ice: T::Hash[Symbol, T.anything]).void }
          attr_writer :ice

          # Raw transport stats such as ICE state, DTLS state, SRTP cipher, TLS version, and
          # selected-candidate-pair changes.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :transport

          sig { params(transport: T::Hash[Symbol, T.anything]).void }
          attr_writer :transport

          # Raw stats object emitted by the Voice SDK.
          sig do
            params(
              audio: T::Hash[Symbol, T.anything],
              connection: T::Hash[Symbol, T.anything],
              ice: T::Hash[Symbol, T.anything],
              transport: T::Hash[Symbol, T.anything]
            ).returns(T.attached_class)
          end
          def self.new(
            # Raw audio stats such as inbound/outbound packet, byte, jitter, packet-loss,
            # bitrate, and audio-level metrics.
            audio: nil,
            # Raw connection stats such as round-trip time, packets, and bytes sent or
            # received.
            connection: nil,
            # Raw ICE candidate-pair information, including selected pair, local/remote
            # candidates, state, and nomination data when provided by the SDK.
            ice: nil,
            # Raw transport stats such as ICE state, DTLS state, SRTP cipher, TLS version, and
            # selected-candidate-pair changes.
            transport: nil
          )
          end

          sig do
            override.returns(
              {
                audio: T::Hash[Symbol, T.anything],
                connection: T::Hash[Symbol, T.anything],
                ice: T::Hash[Symbol, T.anything],
                transport: T::Hash[Symbol, T.anything]
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem::Stats::Variants
            ]
          )
        end
        def self.variants
        end

        UnionMember0Array =
          T.let(
            Telnyx::Internal::Type::ArrayOf[
              Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
            ],
            Telnyx::Internal::Type::Converter
          )
      end
    end

    VoiceSDKCallReportRetrieveResponse =
      T.let(
        Telnyx::Internal::Type::ArrayOf[
          Telnyx::Models::VoiceSDKCallReportRetrieveResponseItem
        ],
        Telnyx::Internal::Type::Converter
      )
  end
end
