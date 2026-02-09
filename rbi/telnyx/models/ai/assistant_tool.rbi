# typed: strong

module Telnyx
  module Models
    module AI
      # The handoff tool allows the assistant to hand off control of the conversation to
      # another AI assistant. By default, this will happen transparently to the end
      # user.
      module AssistantTool
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::AI::InferenceEmbeddingWebhookToolParams,
              Telnyx::AI::RetrievalTool,
              Telnyx::AI::AssistantTool::Handoff,
              Telnyx::AI::HangupTool,
              Telnyx::AI::AssistantTool::Transfer,
              Telnyx::AI::AssistantTool::Refer,
              Telnyx::AI::AssistantTool::SendDtmf,
              Telnyx::AI::AssistantTool::SendMessage
            )
          end

        class Handoff < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::Handoff,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::AssistantTool::Handoff::Handoff) }
          attr_reader :handoff

          sig do
            params(
              handoff: Telnyx::AI::AssistantTool::Handoff::Handoff::OrHash
            ).void
          end
          attr_writer :handoff

          sig { returns(Symbol) }
          attr_accessor :type

          # The handoff tool allows the assistant to hand off control of the conversation to
          # another AI assistant. By default, this will happen transparently to the end
          # user.
          sig do
            params(
              handoff: Telnyx::AI::AssistantTool::Handoff::Handoff::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(handoff:, type: :handoff)
          end

          sig do
            override.returns(
              {
                handoff: Telnyx::AI::AssistantTool::Handoff::Handoff,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Handoff < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Handoff::Handoff,
                  Telnyx::Internal::AnyHash
                )
              end

            # List of possible assistants that can receive a handoff.
            sig do
              returns(
                T::Array[
                  Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant
                ]
              )
            end
            attr_accessor :ai_assistants

            # With the unified voice mode all assistants share the same voice, making the
            # handoff transparent to the user. With the distinct voice mode all assistants
            # retain their voice configuration, providing the experience of a conference call
            # with a team of assistants.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
                )
              )
            end
            attr_reader :voice_mode

            sig do
              params(
                voice_mode:
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
              ).void
            end
            attr_writer :voice_mode

            sig do
              params(
                ai_assistants:
                  T::Array[
                    Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant::OrHash
                  ],
                voice_mode:
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # List of possible assistants that can receive a handoff.
              ai_assistants:,
              # With the unified voice mode all assistants share the same voice, making the
              # handoff transparent to the user. With the distinct voice mode all assistants
              # retain their voice configuration, providing the experience of a conference call
              # with a team of assistants.
              voice_mode: nil
            )
            end

            sig do
              override.returns(
                {
                  ai_assistants:
                    T::Array[
                      Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant
                    ],
                  voice_mode:
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::OrSymbol
                }
              )
            end
            def to_hash
            end

            class AIAssistant < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Handoff::Handoff::AIAssistant,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The ID of the assistant to hand off to.
              sig { returns(String) }
              attr_accessor :id

              # Helpful name for giving context on when to handoff to the assistant.
              sig { returns(String) }
              attr_accessor :name

              sig { params(id: String, name: String).returns(T.attached_class) }
              def self.new(
                # The ID of the assistant to hand off to.
                id:,
                # Helpful name for giving context on when to handoff to the assistant.
                name:
              )
              end

              sig { override.returns({ id: String, name: String }) }
              def to_hash
              end
            end

            # With the unified voice mode all assistants share the same voice, making the
            # handoff transparent to the user. With the distinct voice mode all assistants
            # retain their voice configuration, providing the experience of a conference call
            # with a team of assistants.
            module VoiceMode
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              UNIFIED =
                T.let(
                  :unified,
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                )
              DISTINCT =
                T.let(
                  :distinct,
                  Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::AssistantTool::Handoff::Handoff::VoiceMode::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Transfer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::Transfer,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::AI::AssistantTool::Transfer::Transfer) }
          attr_reader :transfer

          sig do
            params(
              transfer: Telnyx::AI::AssistantTool::Transfer::Transfer::OrHash
            ).void
          end
          attr_writer :transfer

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              transfer: Telnyx::AI::AssistantTool::Transfer::Transfer::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(transfer:, type: :transfer)
          end

          sig do
            override.returns(
              {
                transfer: Telnyx::AI::AssistantTool::Transfer::Transfer,
                type: Symbol
              }
            )
          end
          def to_hash
          end

          class Transfer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Transfer::Transfer,
                  Telnyx::Internal::AnyHash
                )
              end

            # Number or SIP URI placing the call.
            sig { returns(String) }
            attr_accessor :from

            # The different possible targets of the transfer. The assistant will be able to
            # choose one of the targets to transfer the call to.
            sig do
              returns(
                T::Array[Telnyx::AI::AssistantTool::Transfer::Transfer::Target]
              )
            end
            attr_accessor :targets

            # Custom headers to be added to the SIP INVITE for the transfer command.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader
                  ]
                )
              )
            end
            attr_reader :custom_headers

            sig do
              params(
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader::OrHash
                  ]
              ).void
            end
            attr_writer :custom_headers

            # Configuration for voicemail detection (AMD - Answering Machine Detection) on the
            # transferred call. Allows the assistant to detect when a voicemail system answers
            # the transferred call and take appropriate action.
            sig do
              returns(
                T.nilable(
                  Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection
                )
              )
            end
            attr_reader :voicemail_detection

            sig do
              params(
                voicemail_detection:
                  Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OrHash
              ).void
            end
            attr_writer :voicemail_detection

            # Natural language instructions for your agent for how to provide context for the
            # transfer recipient.
            sig { returns(T.nilable(String)) }
            attr_reader :warm_transfer_instructions

            sig { params(warm_transfer_instructions: String).void }
            attr_writer :warm_transfer_instructions

            sig do
              params(
                from: String,
                targets:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::Target::OrHash
                  ],
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader::OrHash
                  ],
                voicemail_detection:
                  Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OrHash,
                warm_transfer_instructions: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Number or SIP URI placing the call.
              from:,
              # The different possible targets of the transfer. The assistant will be able to
              # choose one of the targets to transfer the call to.
              targets:,
              # Custom headers to be added to the SIP INVITE for the transfer command.
              custom_headers: nil,
              # Configuration for voicemail detection (AMD - Answering Machine Detection) on the
              # transferred call. Allows the assistant to detect when a voicemail system answers
              # the transferred call and take appropriate action.
              voicemail_detection: nil,
              # Natural language instructions for your agent for how to provide context for the
              # transfer recipient.
              warm_transfer_instructions: nil
            )
            end

            sig do
              override.returns(
                {
                  from: String,
                  targets:
                    T::Array[
                      Telnyx::AI::AssistantTool::Transfer::Transfer::Target
                    ],
                  custom_headers:
                    T::Array[
                      Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader
                    ],
                  voicemail_detection:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection,
                  warm_transfer_instructions: String
                }
              )
            end
            def to_hash
            end

            class Target < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::Target,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The name of the target.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The destination number or SIP URI of the call.
              sig { returns(T.nilable(String)) }
              attr_reader :to

              sig { params(to: String).void }
              attr_writer :to

              sig { params(name: String, to: String).returns(T.attached_class) }
              def self.new(
                # The name of the target.
                name: nil,
                # The destination number or SIP URI of the call.
                to: nil
              )
              end

              sig { override.returns({ name: String, to: String }) }
              def to_hash
              end
            end

            class CustomHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::CustomHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(name: String, value: String).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig { override.returns({ name: String, value: String }) }
              def to_hash
              end
            end

            class VoicemailDetection < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Advanced AMD detection configuration parameters. All values are optional -
              # Telnyx will use defaults if not specified.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionConfig
                  )
                )
              end
              attr_reader :detection_config

              sig do
                params(
                  detection_config:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionConfig::OrHash
                ).void
              end
              attr_writer :detection_config

              # The AMD detection mode to use. 'premium' provides the highest accuracy.
              # 'disabled' turns off AMD detection.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::OrSymbol
                  )
                )
              end
              attr_reader :detection_mode

              sig do
                params(
                  detection_mode:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::OrSymbol
                ).void
              end
              attr_writer :detection_mode

              # Action to take when voicemail is detected on the transferred call.
              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected
                  )
                )
              end
              attr_reader :on_voicemail_detected

              sig do
                params(
                  on_voicemail_detected:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::OrHash
                ).void
              end
              attr_writer :on_voicemail_detected

              # Configuration for voicemail detection (AMD - Answering Machine Detection) on the
              # transferred call. Allows the assistant to detect when a voicemail system answers
              # the transferred call and take appropriate action.
              sig do
                params(
                  detection_config:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionConfig::OrHash,
                  detection_mode:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::OrSymbol,
                  on_voicemail_detected:
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Advanced AMD detection configuration parameters. All values are optional -
                # Telnyx will use defaults if not specified.
                detection_config: nil,
                # The AMD detection mode to use. 'premium' provides the highest accuracy.
                # 'disabled' turns off AMD detection.
                detection_mode: nil,
                # Action to take when voicemail is detected on the transferred call.
                on_voicemail_detected: nil
              )
              end

              sig do
                override.returns(
                  {
                    detection_config:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionConfig,
                    detection_mode:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::OrSymbol,
                    on_voicemail_detected:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected
                  }
                )
              end
              def to_hash
              end

              class DetectionConfig < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionConfig,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Duration of silence after greeting detection before finalizing the result.
                sig { returns(T.nilable(Integer)) }
                attr_reader :after_greeting_silence_millis

                sig { params(after_greeting_silence_millis: Integer).void }
                attr_writer :after_greeting_silence_millis

                # Maximum silence duration between words during greeting.
                sig { returns(T.nilable(Integer)) }
                attr_reader :between_words_silence_millis

                sig { params(between_words_silence_millis: Integer).void }
                attr_writer :between_words_silence_millis

                # Expected duration of greeting speech.
                sig { returns(T.nilable(Integer)) }
                attr_reader :greeting_duration_millis

                sig { params(greeting_duration_millis: Integer).void }
                attr_writer :greeting_duration_millis

                # Duration of silence after the greeting to wait before considering the greeting
                # complete.
                sig { returns(T.nilable(Integer)) }
                attr_reader :greeting_silence_duration_millis

                sig { params(greeting_silence_duration_millis: Integer).void }
                attr_writer :greeting_silence_duration_millis

                # Maximum time to spend analyzing the greeting.
                sig { returns(T.nilable(Integer)) }
                attr_reader :greeting_total_analysis_time_millis

                sig do
                  params(greeting_total_analysis_time_millis: Integer).void
                end
                attr_writer :greeting_total_analysis_time_millis

                # Maximum silence duration at the start of the call before speech.
                sig { returns(T.nilable(Integer)) }
                attr_reader :initial_silence_millis

                sig { params(initial_silence_millis: Integer).void }
                attr_writer :initial_silence_millis

                # Maximum number of words expected in a human greeting.
                sig { returns(T.nilable(Integer)) }
                attr_reader :maximum_number_of_words

                sig { params(maximum_number_of_words: Integer).void }
                attr_writer :maximum_number_of_words

                # Maximum duration of a single word.
                sig { returns(T.nilable(Integer)) }
                attr_reader :maximum_word_length_millis

                sig { params(maximum_word_length_millis: Integer).void }
                attr_writer :maximum_word_length_millis

                # Minimum duration for audio to be considered a word.
                sig { returns(T.nilable(Integer)) }
                attr_reader :min_word_length_millis

                sig { params(min_word_length_millis: Integer).void }
                attr_writer :min_word_length_millis

                # Audio level threshold for silence detection.
                sig { returns(T.nilable(Integer)) }
                attr_reader :silence_threshold

                sig { params(silence_threshold: Integer).void }
                attr_writer :silence_threshold

                # Total time allowed for AMD analysis.
                sig { returns(T.nilable(Integer)) }
                attr_reader :total_analysis_time_millis

                sig { params(total_analysis_time_millis: Integer).void }
                attr_writer :total_analysis_time_millis

                # Advanced AMD detection configuration parameters. All values are optional -
                # Telnyx will use defaults if not specified.
                sig do
                  params(
                    after_greeting_silence_millis: Integer,
                    between_words_silence_millis: Integer,
                    greeting_duration_millis: Integer,
                    greeting_silence_duration_millis: Integer,
                    greeting_total_analysis_time_millis: Integer,
                    initial_silence_millis: Integer,
                    maximum_number_of_words: Integer,
                    maximum_word_length_millis: Integer,
                    min_word_length_millis: Integer,
                    silence_threshold: Integer,
                    total_analysis_time_millis: Integer
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Duration of silence after greeting detection before finalizing the result.
                  after_greeting_silence_millis: nil,
                  # Maximum silence duration between words during greeting.
                  between_words_silence_millis: nil,
                  # Expected duration of greeting speech.
                  greeting_duration_millis: nil,
                  # Duration of silence after the greeting to wait before considering the greeting
                  # complete.
                  greeting_silence_duration_millis: nil,
                  # Maximum time to spend analyzing the greeting.
                  greeting_total_analysis_time_millis: nil,
                  # Maximum silence duration at the start of the call before speech.
                  initial_silence_millis: nil,
                  # Maximum number of words expected in a human greeting.
                  maximum_number_of_words: nil,
                  # Maximum duration of a single word.
                  maximum_word_length_millis: nil,
                  # Minimum duration for audio to be considered a word.
                  min_word_length_millis: nil,
                  # Audio level threshold for silence detection.
                  silence_threshold: nil,
                  # Total time allowed for AMD analysis.
                  total_analysis_time_millis: nil
                )
                end

                sig do
                  override.returns(
                    {
                      after_greeting_silence_millis: Integer,
                      between_words_silence_millis: Integer,
                      greeting_duration_millis: Integer,
                      greeting_silence_duration_millis: Integer,
                      greeting_total_analysis_time_millis: Integer,
                      initial_silence_millis: Integer,
                      maximum_number_of_words: Integer,
                      maximum_word_length_millis: Integer,
                      min_word_length_millis: Integer,
                      silence_threshold: Integer,
                      total_analysis_time_millis: Integer
                    }
                  )
                end
                def to_hash
                end
              end

              # The AMD detection mode to use. 'premium' provides the highest accuracy.
              # 'disabled' turns off AMD detection.
              module DetectionMode
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PREMIUM =
                  T.let(
                    :premium,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )
                DETECT =
                  T.let(
                    :detect,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )
                DETECT_BEEP =
                  T.let(
                    :detect_beep,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )
                DETECT_WORDS =
                  T.let(
                    :detect_words,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )
                GREETING_END =
                  T.let(
                    :greeting_end,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )
                DISABLED =
                  T.let(
                    :disabled,
                    Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::DetectionMode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class OnVoicemailDetected < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # The action to take when voicemail is detected. 'stop_transfer' hangs up
                # immediately. 'leave_message_and_stop_transfer' leaves a message then hangs up.
                # 'continue_transfer' bridges the call despite voicemail detection.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol
                    )
                  )
                end
                attr_reader :action

                sig do
                  params(
                    action:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol
                  ).void
                end
                attr_writer :action

                # Configuration for the voicemail message to leave. Only applicable when action is
                # 'leave_message_and_stop_transfer'.
                sig do
                  returns(
                    T.nilable(
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage
                    )
                  )
                end
                attr_reader :voicemail_message

                sig do
                  params(
                    voicemail_message:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::OrHash
                  ).void
                end
                attr_writer :voicemail_message

                # Action to take when voicemail is detected on the transferred call.
                sig do
                  params(
                    action:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol,
                    voicemail_message:
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The action to take when voicemail is detected. 'stop_transfer' hangs up
                  # immediately. 'leave_message_and_stop_transfer' leaves a message then hangs up.
                  # 'continue_transfer' bridges the call despite voicemail detection.
                  action: nil,
                  # Configuration for the voicemail message to leave. Only applicable when action is
                  # 'leave_message_and_stop_transfer'.
                  voicemail_message: nil
                )
                end

                sig do
                  override.returns(
                    {
                      action:
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::OrSymbol,
                      voicemail_message:
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage
                    }
                  )
                end
                def to_hash
                end

                # The action to take when voicemail is detected. 'stop_transfer' hangs up
                # immediately. 'leave_message_and_stop_transfer' leaves a message then hangs up.
                # 'continue_transfer' bridges the call despite voicemail detection.
                module Action
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  STOP_TRANSFER =
                    T.let(
                      :stop_transfer,
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                    )
                  LEAVE_MESSAGE_AND_STOP_TRANSFER =
                    T.let(
                      :leave_message_and_stop_transfer,
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                    )
                  CONTINUE_TRANSFER =
                    T.let(
                      :continue_transfer,
                      Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::Action::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class VoicemailMessage < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  # The specific message to leave as voicemail (converted to speech). Only
                  # applicable when type is 'message'.
                  sig { returns(T.nilable(String)) }
                  attr_reader :message

                  sig { params(message: String).void }
                  attr_writer :message

                  # The type of voicemail message. Use 'message' to leave a specific TTS message, or
                  # 'warm_transfer_instructions' to play the warm transfer audio.
                  sig do
                    returns(
                      T.nilable(
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                      )
                    )
                  end
                  attr_reader :type

                  sig do
                    params(
                      type:
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                    ).void
                  end
                  attr_writer :type

                  # Configuration for the voicemail message to leave. Only applicable when action is
                  # 'leave_message_and_stop_transfer'.
                  sig do
                    params(
                      message: String,
                      type:
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The specific message to leave as voicemail (converted to speech). Only
                    # applicable when type is 'message'.
                    message: nil,
                    # The type of voicemail message. Use 'message' to leave a specific TTS message, or
                    # 'warm_transfer_instructions' to play the warm transfer audio.
                    type: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        message: String,
                        type:
                          Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::OrSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # The type of voicemail message. Use 'message' to leave a specific TTS message, or
                  # 'warm_transfer_instructions' to play the warm transfer audio.
                  module Type
                    extend Telnyx::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    MESSAGE =
                      T.let(
                        :message,
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
                      )
                    WARM_TRANSFER_INSTRUCTIONS =
                      T.let(
                        :warm_transfer_instructions,
                        Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Telnyx::AI::AssistantTool::Transfer::Transfer::VoicemailDetection::OnVoicemailDetected::VoicemailMessage::Type::TaggedSymbol
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

        class Refer < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::AI::AssistantTool::Refer, Telnyx::Internal::AnyHash)
            end

          sig { returns(Telnyx::AI::AssistantTool::Refer::Refer) }
          attr_reader :refer

          sig do
            params(refer: Telnyx::AI::AssistantTool::Refer::Refer::OrHash).void
          end
          attr_writer :refer

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              refer: Telnyx::AI::AssistantTool::Refer::Refer::OrHash,
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(refer:, type: :refer)
          end

          sig do
            override.returns(
              { refer: Telnyx::AI::AssistantTool::Refer::Refer, type: Symbol }
            )
          end
          def to_hash
          end

          class Refer < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::AssistantTool::Refer::Refer,
                  Telnyx::Internal::AnyHash
                )
              end

            # The different possible targets of the SIP refer. The assistant will be able to
            # choose one of the targets to refer the call to.
            sig do
              returns(T::Array[Telnyx::AI::AssistantTool::Refer::Refer::Target])
            end
            attr_accessor :targets

            # Custom headers to be added to the SIP REFER.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader
                  ]
                )
              )
            end
            attr_reader :custom_headers

            sig do
              params(
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader::OrHash
                  ]
              ).void
            end
            attr_writer :custom_headers

            # SIP headers to be added to the SIP REFER. Currently only User-to-User and
            # Diversion headers are supported.
            sig do
              returns(
                T.nilable(
                  T::Array[Telnyx::AI::AssistantTool::Refer::Refer::SipHeader]
                )
              )
            end
            attr_reader :sip_headers

            sig do
              params(
                sip_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::OrHash
                  ]
              ).void
            end
            attr_writer :sip_headers

            sig do
              params(
                targets:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::Target::OrHash
                  ],
                custom_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader::OrHash
                  ],
                sip_headers:
                  T::Array[
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # The different possible targets of the SIP refer. The assistant will be able to
              # choose one of the targets to refer the call to.
              targets:,
              # Custom headers to be added to the SIP REFER.
              custom_headers: nil,
              # SIP headers to be added to the SIP REFER. Currently only User-to-User and
              # Diversion headers are supported.
              sip_headers: nil
            )
            end

            sig do
              override.returns(
                {
                  targets:
                    T::Array[Telnyx::AI::AssistantTool::Refer::Refer::Target],
                  custom_headers:
                    T::Array[
                      Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader
                    ],
                  sip_headers:
                    T::Array[Telnyx::AI::AssistantTool::Refer::Refer::SipHeader]
                }
              )
            end
            def to_hash
            end

            class Target < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::Target,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The name of the target.
              sig { returns(String) }
              attr_accessor :name

              # The SIP URI to which the call will be referred.
              sig { returns(String) }
              attr_accessor :sip_address

              # SIP Authentication password used for SIP challenges.
              sig { returns(T.nilable(String)) }
              attr_reader :sip_auth_password

              sig { params(sip_auth_password: String).void }
              attr_writer :sip_auth_password

              # SIP Authentication username used for SIP challenges.
              sig { returns(T.nilable(String)) }
              attr_reader :sip_auth_username

              sig { params(sip_auth_username: String).void }
              attr_writer :sip_auth_username

              sig do
                params(
                  name: String,
                  sip_address: String,
                  sip_auth_password: String,
                  sip_auth_username: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The name of the target.
                name:,
                # The SIP URI to which the call will be referred.
                sip_address:,
                # SIP Authentication password used for SIP challenges.
                sip_auth_password: nil,
                # SIP Authentication username used for SIP challenges.
                sip_auth_username: nil
              )
              end

              sig do
                override.returns(
                  {
                    name: String,
                    sip_address: String,
                    sip_auth_password: String,
                    sip_auth_username: String
                  }
                )
              end
              def to_hash
              end
            end

            class CustomHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::CustomHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(name: String, value: String).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig { override.returns({ name: String, value: String }) }
              def to_hash
              end
            end

            class SipHeader < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol
                  )
                )
              end
              attr_reader :name

              sig do
                params(
                  name:
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol
                ).void
              end
              attr_writer :name

              # The value of the header. Note that we support mustache templating for the value.
              # For example you can use
              # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
              # the integration secret.
              sig { returns(T.nilable(String)) }
              attr_reader :value

              sig { params(value: String).void }
              attr_writer :value

              sig do
                params(
                  name:
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                name: nil,
                # The value of the header. Note that we support mustache templating for the value.
                # For example you can use
                # `{{#integration_secret}}test-secret{{/integration_secret}}` to pass the value of
                # the integration secret.
                value: nil
              )
              end

              sig do
                override.returns(
                  {
                    name:
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::OrSymbol,
                    value: String
                  }
                )
              end
              def to_hash
              end

              module Name
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                USER_TO_USER =
                  T.let(
                    :"User-to-User",
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                  )
                DIVERSION =
                  T.let(
                    :Diversion,
                    Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::AssistantTool::Refer::Refer::SipHeader::Name::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end

        class SendDtmf < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::SendDtmf,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :send_dtmf

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(
              send_dtmf: T::Hash[Symbol, T.anything],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(send_dtmf:, type: :send_dtmf)
          end

          sig do
            override.returns(
              { send_dtmf: T::Hash[Symbol, T.anything], type: Symbol }
            )
          end
          def to_hash
          end
        end

        class SendMessage < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::AssistantTool::SendMessage,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :send_message

          sig { returns(Symbol) }
          attr_accessor :type

          # The send_message tool allows the assistant to send SMS or MMS messages to the
          # end user. The 'to' and 'from' addresses are automatically determined from the
          # conversation context, and the message text is generated by the assistant.
          sig do
            params(
              send_message: T::Hash[Symbol, T.anything],
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(send_message:, type: :send_message)
          end

          sig do
            override.returns(
              { send_message: T::Hash[Symbol, T.anything], type: Symbol }
            )
          end
          def to_hash
          end
        end

        sig { override.returns(T::Array[Telnyx::AI::AssistantTool::Variants]) }
        def self.variants
        end
      end
    end
  end
end
