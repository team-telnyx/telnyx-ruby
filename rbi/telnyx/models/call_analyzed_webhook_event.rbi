# typed: strong

module Telnyx
  module Models
    class CallAnalyzedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CallAnalyzedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::CallAnalyzedWebhookEvent::Data)) }
      attr_reader :data

      sig { params(data: Telnyx::CallAnalyzedWebhookEvent::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallAnalyzedWebhookEvent::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallAnalyzedWebhookEvent::Data }) }
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CallAnalyzedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(
            T.nilable(
              Telnyx::CallAnalyzedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CallAnalyzedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(T.nilable(Telnyx::CallAnalyzedWebhookEvent::Data::Payload))
        end
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::CallAnalyzedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CallAnalyzedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::CallAnalyzedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the event.
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
                Telnyx::CallAnalyzedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::CallAnalyzedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::TaggedSymbol
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
              T.all(Symbol, Telnyx::CallAnalyzedWebhookEvent::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_ANALYZED =
            T.let(
              :"call.analyzed",
              Telnyx::CallAnalyzedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallAnalyzedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CallAnalyzedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Unique identifier of the assistant involved in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :assistant_id

          sig { params(assistant_id: String).void }
          attr_writer :assistant_id

          # Call ID used to issue commands via Call Control API.
          sig { returns(T.nilable(String)) }
          attr_reader :call_control_id

          sig { params(call_control_id: String).void }
          attr_writer :call_control_id

          # ID that is unique to the call leg.
          sig { returns(T.nilable(String)) }
          attr_reader :call_leg_id

          sig { params(call_leg_id: String).void }
          attr_writer :call_leg_id

          # ID that is unique to the call session (group of related call legs).
          sig { returns(T.nilable(String)) }
          attr_reader :call_session_id

          sig { params(call_session_id: String).void }
          attr_writer :call_session_id

          # Base64-encoded state received from a command.
          sig { returns(T.nilable(String)) }
          attr_reader :client_state

          sig { params(client_state: String).void }
          attr_writer :client_state

          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :connection_id

          sig { params(connection_id: String).void }
          attr_writer :connection_id

          # ID unique to the conversation generated for the call.
          sig { returns(T.nilable(String)) }
          attr_reader :conversation_id

          sig { params(conversation_id: String).void }
          attr_writer :conversation_id

          # The conversation's generated insights, when insight generation was enabled for
          # the assistant and has completed. Each entry carries a `status` and the generated
          # `conversation_insights` results. An empty array when the conversation has no
          # generated insights; null when insight data could not be retrieved.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight
                ]
              )
            )
          end
          attr_accessor :conversation_insights

          # The session's cost breakdown from Session Analysis, covering every product
          # billed on the call: the AI Voice Assistant engine minutes
          # (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
          # SIP trunking, and recording lines. If cost data could not be retrieved after
          # retries, this field carries the placeholder string `No cost data available.`
          # instead of an object.
          sig do
            returns(
              T.nilable(
                Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::Variants
              )
            )
          end
          attr_reader :cost

          sig do
            params(
              cost:
                T.any(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::OrHash,
                  String
                )
            ).void
          end
          attr_writer :cost

          # Duration of the conversation in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration_sec

          sig { params(duration_sec: Integer).void }
          attr_writer :duration_sec

          # The caller's number or identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The large language model used during the conversation.
          sig { returns(T.nilable(String)) }
          attr_reader :llm_model

          sig { params(llm_model: String).void }
          attr_writer :llm_model

          # Reason the conversation ended.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Recordings created for the call. An empty array when the call had no recordings;
          # null when recording data could not be retrieved.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording
                ]
              )
            )
          end
          attr_accessor :recordings

          # The speech-to-text model used in the conversation.
          sig { returns(T.nilable(String)) }
          attr_reader :stt_model

          sig { params(stt_model: String).void }
          attr_writer :stt_model

          # The callee's number or SIP address.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          # The model ID used for text-to-speech synthesis.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_model_id

          sig { params(tts_model_id: String).void }
          attr_writer :tts_model_id

          # The text-to-speech provider used in the call.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_provider

          sig { params(tts_provider: String).void }
          attr_writer :tts_provider

          # Voice ID used for TTS.
          sig { returns(T.nilable(String)) }
          attr_reader :tts_voice_id

          sig { params(tts_voice_id: String).void }
          attr_writer :tts_voice_id

          sig do
            params(
              assistant_id: String,
              call_control_id: String,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              connection_id: String,
              conversation_id: String,
              conversation_insights:
                T.nilable(
                  T::Array[
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::OrHash
                  ]
                ),
              cost:
                T.any(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::OrHash,
                  String
                ),
              duration_sec: Integer,
              from: String,
              llm_model: String,
              reason: T.nilable(String),
              recordings:
                T.nilable(
                  T::Array[
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::OrHash
                  ]
                ),
              stt_model: String,
              to: String,
              tts_model_id: String,
              tts_provider: String,
              tts_voice_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier of the assistant involved in the call.
            assistant_id: nil,
            # Call ID used to issue commands via Call Control API.
            call_control_id: nil,
            # ID that is unique to the call leg.
            call_leg_id: nil,
            # ID that is unique to the call session (group of related call legs).
            call_session_id: nil,
            # Base64-encoded state received from a command.
            client_state: nil,
            # Call Control App ID (formerly Telnyx connection ID) used in the call.
            connection_id: nil,
            # ID unique to the conversation generated for the call.
            conversation_id: nil,
            # The conversation's generated insights, when insight generation was enabled for
            # the assistant and has completed. Each entry carries a `status` and the generated
            # `conversation_insights` results. An empty array when the conversation has no
            # generated insights; null when insight data could not be retrieved.
            conversation_insights: nil,
            # The session's cost breakdown from Session Analysis, covering every product
            # billed on the call: the AI Voice Assistant engine minutes
            # (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
            # SIP trunking, and recording lines. If cost data could not be retrieved after
            # retries, this field carries the placeholder string `No cost data available.`
            # instead of an object.
            cost: nil,
            # Duration of the conversation in seconds.
            duration_sec: nil,
            # The caller's number or identifier.
            from: nil,
            # The large language model used during the conversation.
            llm_model: nil,
            # Reason the conversation ended.
            reason: nil,
            # Recordings created for the call. An empty array when the call had no recordings;
            # null when recording data could not be retrieved.
            recordings: nil,
            # The speech-to-text model used in the conversation.
            stt_model: nil,
            # The callee's number or SIP address.
            to: nil,
            # The model ID used for text-to-speech synthesis.
            tts_model_id: nil,
            # The text-to-speech provider used in the call.
            tts_provider: nil,
            # Voice ID used for TTS.
            tts_voice_id: nil
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                call_control_id: String,
                call_leg_id: String,
                call_session_id: String,
                client_state: String,
                connection_id: String,
                conversation_id: String,
                conversation_insights:
                  T.nilable(
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight
                    ]
                  ),
                cost:
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::Variants,
                duration_sec: Integer,
                from: String,
                llm_model: String,
                reason: T.nilable(String),
                recordings:
                  T.nilable(
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording
                    ]
                  ),
                stt_model: String,
                to: String,
                tts_model_id: String,
                tts_provider: String,
                tts_voice_id: String
              }
            )
          end
          def to_hash
          end

          class ConversationInsight < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight,
                  Telnyx::Internal::AnyHash
                )
              end

            # Generated insight results.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight
                  ]
                )
              )
            end
            attr_accessor :conversation_insights

            # Status of insight generation for this entry.
            sig { returns(T.nilable(String)) }
            attr_reader :status

            sig { params(status: String).void }
            attr_writer :status

            sig do
              params(
                conversation_insights:
                  T.nilable(
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight::OrHash
                    ]
                  ),
                status: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Generated insight results.
              conversation_insights: nil,
              # Status of insight generation for this entry.
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  conversation_insights:
                    T.nilable(
                      T::Array[
                        Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight
                      ]
                    ),
                  status: String
                }
              )
            end
            def to_hash
            end

            class ConversationInsight < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::ConversationInsight::ConversationInsight,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Identifier of the insight template the result was generated from.
              sig { returns(T.nilable(String)) }
              attr_reader :insight_id

              sig { params(insight_id: String).void }
              attr_writer :insight_id

              # The generated insight result.
              sig { returns(T.nilable(String)) }
              attr_reader :result

              sig { params(result: String).void }
              attr_writer :result

              sig do
                params(insight_id: String, result: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Identifier of the insight template the result was generated from.
                insight_id: nil,
                # The generated insight result.
                result: nil
              )
              end

              sig { override.returns({ insight_id: String, result: String }) }
              def to_hash
              end
            end
          end

          # The session's cost breakdown from Session Analysis, covering every product
          # billed on the call: the AI Voice Assistant engine minutes
          # (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
          # SIP trunking, and recording lines. If cost data could not be retrieved after
          # retries, this field carries the placeholder string `No cost data available.`
          # instead of an object.
          module Cost
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0,
                  String
                )
              end

            class UnionMember0 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Cost lines grouped by product.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown
                    ]
                  )
                )
              end
              attr_reader :breakdown

              sig do
                params(
                  breakdown:
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown::OrHash
                    ]
                ).void
              end
              attr_writer :breakdown

              # The currency of the cost amounts.
              sig { returns(T.nilable(String)) }
              attr_reader :currency

              sig { params(currency: String).void }
              attr_writer :currency

              # The total cost of the call, summed across every product in the breakdown.
              sig { returns(T.nilable(String)) }
              attr_reader :total

              sig { params(total: String).void }
              attr_writer :total

              # The session's cost breakdown from Session Analysis, covering every product
              # billed on the call: the AI Voice Assistant engine minutes
              # (`ai-voice-assistant`), LLM inference tokens (`inference`), and call-control,
              # SIP trunking, and recording lines. If cost data could not be retrieved after
              # retries, this field carries the placeholder string `No cost data available.`
              # instead of an object.
              sig do
                params(
                  breakdown:
                    T::Array[
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown::OrHash
                    ],
                  currency: String,
                  total: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Cost lines grouped by product.
                breakdown: nil,
                # The currency of the cost amounts.
                currency: nil,
                # The total cost of the call, summed across every product in the breakdown.
                total: nil
              )
              end

              sig do
                override.returns(
                  {
                    breakdown:
                      T::Array[
                        Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown
                      ],
                    currency: String,
                    total: String
                  }
                )
              end
              def to_hash
              end

              class Breakdown < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::UnionMember0::Breakdown,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Total cost for this product across the call, in the currency given by
                # `cost.currency`.
                sig { returns(T.nilable(String)) }
                attr_reader :cost

                sig { params(cost: String).void }
                attr_writer :cost

                # The Telnyx product the cost line belongs to (for example `ai-voice-assistant`,
                # `inference`, `callcontrol-cdrs`, `siptrunking-cdrs`, `recording-cdrs`).
                sig { returns(T.nilable(String)) }
                attr_reader :product

                sig { params(product: String).void }
                attr_writer :product

                sig do
                  params(cost: String, product: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Total cost for this product across the call, in the currency given by
                  # `cost.currency`.
                  cost: nil,
                  # The Telnyx product the cost line belongs to (for example `ai-voice-assistant`,
                  # `inference`, `callcontrol-cdrs`, `siptrunking-cdrs`, `recording-cdrs`).
                  product: nil
                )
                end

                sig { override.returns({ cost: String, product: String }) }
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Cost::Variants
                ]
              )
            end
            def self.variants
            end
          end

          class Recording < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording,
                  Telnyx::Internal::AnyHash
                )
              end

            # Unique identifier of the recording.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # The recording channel configuration.
            sig { returns(T.nilable(String)) }
            attr_reader :channels

            sig { params(channels: String).void }
            attr_writer :channels

            # Download URL per format. URLs are pre-signed and expire.
            sig do
              returns(
                T.nilable(
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs
                )
              )
            end
            attr_reader :download_urls

            sig do
              params(
                download_urls:
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs::OrHash
              ).void
            end
            attr_writer :download_urls

            # ISO 8601 datetime of when the recording ended.
            sig { returns(T.nilable(Time)) }
            attr_reader :end_time

            sig { params(end_time: Time).void }
            attr_writer :end_time

            # The recording file format.
            sig { returns(T.nilable(String)) }
            attr_reader :format_

            sig { params(format_: String).void }
            attr_writer :format_

            # ISO 8601 datetime of when the recording started.
            sig { returns(T.nilable(Time)) }
            attr_reader :start_time

            sig { params(start_time: Time).void }
            attr_writer :start_time

            sig do
              params(
                id: String,
                channels: String,
                download_urls:
                  Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs::OrHash,
                end_time: Time,
                format_: String,
                start_time: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Unique identifier of the recording.
              id: nil,
              # The recording channel configuration.
              channels: nil,
              # Download URL per format. URLs are pre-signed and expire.
              download_urls: nil,
              # ISO 8601 datetime of when the recording ended.
              end_time: nil,
              # The recording file format.
              format_: nil,
              # ISO 8601 datetime of when the recording started.
              start_time: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  channels: String,
                  download_urls:
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs,
                  end_time: Time,
                  format_: String,
                  start_time: Time
                }
              )
            end
            def to_hash
            end

            class DownloadURLs < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::CallAnalyzedWebhookEvent::Data::Payload::Recording::DownloadURLs,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Pre-signed URL for the mp3 recording file.
              sig { returns(T.nilable(String)) }
              attr_reader :mp3

              sig { params(mp3: String).void }
              attr_writer :mp3

              # Pre-signed URL for the wav recording file.
              sig { returns(T.nilable(String)) }
              attr_reader :wav

              sig { params(wav: String).void }
              attr_writer :wav

              # Download URL per format. URLs are pre-signed and expire.
              sig { params(mp3: String, wav: String).returns(T.attached_class) }
              def self.new(
                # Pre-signed URL for the mp3 recording file.
                mp3: nil,
                # Pre-signed URL for the wav recording file.
                wav: nil
              )
              end

              sig { override.returns({ mp3: String, wav: String }) }
              def to_hash
              end
            end
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallAnalyzedWebhookEvent::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CallAnalyzedWebhookEvent::Data::RecordType::TaggedSymbol
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
