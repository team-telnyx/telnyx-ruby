# typed: strong

module Telnyx
  module Models
    class CallHangupWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallHangupWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallHangupWebhookEvent::Data)) }
      attr_reader :data

      sig { params(data: Telnyx::CallHangupWebhookEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallHangupWebhookEvent::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallHangupWebhookEvent::Data }) }
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallHangupWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallHangupWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallHangupWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(T.nilable(Telnyx::CallHangupWebhookEvent::Data::Payload))
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::CallHangupWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallHangupWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallHangupWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallHangupWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::CallHangupWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallHangupWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the type of resource.
          id: nil,
          # The type of event being delivered.
          event_type: nil,
          # ISO 8601 datetime of when the event occurred.
          occurred_at: nil,
          payload: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::CallHangupWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallHangupWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallHangupWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event being delivered.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallHangupWebhookEvent::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_HANGUP =
            T.let(
              :"call.hangup",
              Telnyx::CallHangupWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallHangupWebhookEvent::Data::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CallHangupWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

          # ID that is unique to the call and can be used to correlate webhook events.
          sig { returns(T.nilable(String)) }
          attr_reader :call_leg_id

          sig { params(call_leg_id: String).void }
          attr_writer :call_leg_id

          # Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
          # includes metrics that are available (filters out nil values). Returns nil if no
          # metrics are available.
          sig do
            returns(
              T.nilable(
                Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats
              )
            )
          end
          attr_reader :call_quality_stats

          sig do
            params(
              call_quality_stats:
                T.nilable(
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::OrHash
                )
            ).void
          end
          attr_writer :call_quality_stats

          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          sig { returns(T.nilable(String)) }
          attr_reader :call_session_id

          sig { params(call_session_id: String).void }
          attr_writer :call_session_id

          # State received from a command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # Custom headers set on answer command
          sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
          attr_reader :custom_headers

          sig do
            params(
              custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]
            ).void
          end
          attr_writer :custom_headers

          # Number or SIP URI placing the call.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The reason the call was ended (`call_rejected`, `normal_clearing`,
          # `originator_cancel`, `timeout`, `time_limit`, `user_busy`, `not_found` or
          # `unspecified`).
          sig do
            returns(
              T.nilable(
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            )
          end
          attr_reader :hangup_cause

          sig do
            params(
              hangup_cause:
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::OrSymbol
            ).void
          end
          attr_writer :hangup_cause

          # The party who ended the call (`callee`, `caller`, `unknown`).
          sig do
            returns(
              T.nilable(
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol
              )
            )
          end
          attr_reader :hangup_source

          sig do
            params(
              hangup_source:
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::OrSymbol
            ).void
          end
          attr_writer :hangup_source

          # The reason the call was ended (SIP response code). If the SIP response is
          # unavailable (in inbound calls for example) this is set to `unspecified`.
          sig { returns(T.nilable(String)) }
          attr_reader :sip_hangup_cause

          sig { params(sip_hangup_cause: String).void }
          attr_writer :sip_hangup_cause

          # User-to-User and Diversion headers from sip invite.
          sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
          attr_reader :sip_headers

          sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
          attr_writer :sip_headers

          # ISO 8601 datetime of when the call started.
          sig { returns(T.nilable(Time)) }
          attr_reader :start_time

          sig { params(start_time: Time).void }
          attr_writer :start_time

          # State received from a command.
          sig do
            returns(
              T.nilable(
                Telnyx::CallHangupWebhookEvent::Data::Payload::State::TaggedSymbol
              )
            )
          end
          attr_reader :state

          sig do
            params(
              state:
                Telnyx::CallHangupWebhookEvent::Data::Payload::State::OrSymbol
            ).void
          end
          attr_writer :state

          # Array of tags associated to number.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tags

          sig { params(tags: T::Array[String]).void }
          attr_writer :tags

          # Destination number or SIP URI of the call.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              call_control_id: String,
              call_leg_id: String,
              call_quality_stats:
                T.nilable(
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::OrHash
                ),
              call_session_id: String,
              client_state: String,
              connection_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
              from: String,
              hangup_cause:
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::OrSymbol,
              hangup_source:
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::OrSymbol,
              sip_hangup_cause: String,
              sip_headers: T::Array[Telnyx::SipHeader::OrHash],
              start_time: Time,
              state:
                Telnyx::CallHangupWebhookEvent::Data::Payload::State::OrSymbol,
              tags: T::Array[String],
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call and can be used to correlate webhook events.
            call_leg_id: nil,
            # Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
            # includes metrics that are available (filters out nil values). Returns nil if no
            # metrics are available.
            call_quality_stats: nil,
            # ID that is unique to the call session and can be used to correlate webhook
            # events. Call session is a group of related call legs that logically belong to
            # the same phone call, e.g. an inbound and outbound leg of a transferred call.
            call_session_id: nil,
            # State received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # Custom headers set on answer command
            custom_headers: nil,
            # Number or SIP URI placing the call.
            from: nil,
            # The reason the call was ended (`call_rejected`, `normal_clearing`,
            # `originator_cancel`, `timeout`, `time_limit`, `user_busy`, `not_found` or
            # `unspecified`).
            hangup_cause: nil,
            # The party who ended the call (`callee`, `caller`, `unknown`).
            hangup_source: nil,
            # The reason the call was ended (SIP response code). If the SIP response is
            # unavailable (in inbound calls for example) this is set to `unspecified`.
            sip_hangup_cause: nil,
            # User-to-User and Diversion headers from sip invite.
            sip_headers: nil,
            # ISO 8601 datetime of when the call started.
            start_time: nil,
            # State received from a command.
            state: nil,
            # Array of tags associated to number.
            tags: nil,
            # Destination number or SIP URI of the call.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                call_control_id: String,
                call_leg_id: String,
                call_quality_stats:
                  T.nilable(
                    Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats
                  ),
                call_session_id: String,
                client_state: String,
                connection_id: String,
                custom_headers: T::Array[Telnyx::CustomSipHeader],
                from: String,
                hangup_cause:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol,
                hangup_source:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol,
                sip_hangup_cause: String,
                sip_headers: T::Array[Telnyx::SipHeader],
                start_time: Time,
                state:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::State::TaggedSymbol,
                tags: T::Array[String],
                to: String
              }
            )
          end
          def to_hash
          end

          class CallQualityStats < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats,
                  Telnyx::Internal::AnyHash
                )
              end

            # Inbound call quality statistics.
            sig do
              returns(
                T.nilable(
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Inbound
                )
              )
            end
            attr_reader :inbound

            sig do
              params(
                inbound:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Inbound::OrHash
              ).void
            end
            attr_writer :inbound

            # Outbound call quality statistics.
            sig do
              returns(
                T.nilable(
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Outbound
                )
              )
            end
            attr_reader :outbound

            sig do
              params(
                outbound:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Outbound::OrHash
              ).void
            end
            attr_writer :outbound

            # Call quality statistics aggregated from the CHANNEL_HANGUP_COMPLETE event. Only
            # includes metrics that are available (filters out nil values). Returns nil if no
            # metrics are available.
            sig do
              params(
                inbound:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Inbound::OrHash,
                outbound:
                  Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Outbound::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Inbound call quality statistics.
              inbound: nil,
              # Outbound call quality statistics.
              outbound: nil
            )
            end

            sig do
              override.returns(
                {
                  inbound:
                    Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Inbound,
                  outbound:
                    Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Outbound
                }
              )
            end
            def to_hash
            end

            class Inbound < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Inbound,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Maximum jitter variance for inbound audio.
              sig { returns(T.nilable(String)) }
              attr_reader :jitter_max_variance

              sig { params(jitter_max_variance: String).void }
              attr_writer :jitter_max_variance

              # Number of packets used for jitter calculation on inbound audio.
              sig { returns(T.nilable(String)) }
              attr_reader :jitter_packet_count

              sig { params(jitter_packet_count: String).void }
              attr_writer :jitter_packet_count

              # Mean Opinion Score (MOS) for inbound audio quality.
              sig { returns(T.nilable(String)) }
              attr_reader :mos

              sig { params(mos: String).void }
              attr_writer :mos

              # Total number of inbound audio packets.
              sig { returns(T.nilable(String)) }
              attr_reader :packet_count

              sig { params(packet_count: String).void }
              attr_writer :packet_count

              # Number of skipped inbound packets (packet loss).
              sig { returns(T.nilable(String)) }
              attr_reader :skip_packet_count

              sig { params(skip_packet_count: String).void }
              attr_writer :skip_packet_count

              # Inbound call quality statistics.
              sig do
                params(
                  jitter_max_variance: String,
                  jitter_packet_count: String,
                  mos: String,
                  packet_count: String,
                  skip_packet_count: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Maximum jitter variance for inbound audio.
                jitter_max_variance: nil,
                # Number of packets used for jitter calculation on inbound audio.
                jitter_packet_count: nil,
                # Mean Opinion Score (MOS) for inbound audio quality.
                mos: nil,
                # Total number of inbound audio packets.
                packet_count: nil,
                # Number of skipped inbound packets (packet loss).
                skip_packet_count: nil
              )
              end

              sig do
                override.returns(
                  {
                    jitter_max_variance: String,
                    jitter_packet_count: String,
                    mos: String,
                    packet_count: String,
                    skip_packet_count: String
                  }
                )
              end
              def to_hash
              end
            end

            class Outbound < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::CallHangupWebhookEvent::Data::Payload::CallQualityStats::Outbound,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Total number of outbound audio packets.
              sig { returns(T.nilable(String)) }
              attr_reader :packet_count

              sig { params(packet_count: String).void }
              attr_writer :packet_count

              # Number of skipped outbound packets (packet loss).
              sig { returns(T.nilable(String)) }
              attr_reader :skip_packet_count

              sig { params(skip_packet_count: String).void }
              attr_writer :skip_packet_count

              # Outbound call quality statistics.
              sig do
                params(packet_count: String, skip_packet_count: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Total number of outbound audio packets.
                packet_count: nil,
                # Number of skipped outbound packets (packet loss).
                skip_packet_count: nil
              )
              end

              sig do
                override.returns(
                  { packet_count: String, skip_packet_count: String }
                )
              end
              def to_hash
              end
            end
          end

          # The reason the call was ended (`call_rejected`, `normal_clearing`,
          # `originator_cancel`, `timeout`, `time_limit`, `user_busy`, `not_found` or
          # `unspecified`).
          module HangupCause
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CALL_REJECTED =
              T.let(
                :call_rejected,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            NORMAL_CLEARING =
              T.let(
                :normal_clearing,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            ORIGINATOR_CANCEL =
              T.let(
                :originator_cancel,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            TIMEOUT =
              T.let(
                :timeout,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            TIME_LIMIT =
              T.let(
                :time_limit,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            USER_BUSY =
              T.let(
                :user_busy,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            NOT_FOUND =
              T.let(
                :not_found,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )
            UNSPECIFIED =
              T.let(
                :unspecified,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupCause::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The party who ended the call (`callee`, `caller`, `unknown`).
          module HangupSource
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CALLER =
              T.let(
                :caller,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol
              )
            CALLEE =
              T.let(
                :callee,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallHangupWebhookEvent::Data::Payload::HangupSource::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # State received from a command.
          module State
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CallHangupWebhookEvent::Data::Payload::State
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HANGUP =
              T.let(
                :hangup,
                Telnyx::CallHangupWebhookEvent::Data::Payload::State::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallHangupWebhookEvent::Data::Payload::State::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallHangupWebhookEvent::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallHangupWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallHangupWebhookEvent::Data::RecordType::TaggedSymbol
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
