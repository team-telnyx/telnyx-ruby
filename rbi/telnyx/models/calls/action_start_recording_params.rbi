# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartRecordingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartRecordingParams,
              Telnyx::Internal::AnyHash
            )
          end

        # When `dual`, final audio file will be stereo recorded with the first leg on
        # channel A, and the rest on channel B.
        sig do
          returns(Telnyx::Calls::ActionStartRecordingParams::Channels::OrSymbol)
        end
        attr_accessor :channels

        # The audio file format used when storing the call recording. Can be either `mp3`
        # or `wav`.
        sig do
          returns(Telnyx::Calls::ActionStartRecordingParams::Format::OrSymbol)
        end
        attr_accessor :format_

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # The custom recording file name to be used instead of the default `call_leg_id`.
        # Telnyx will still add a Unix timestamp suffix.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_file_name

        sig { params(custom_file_name: String).void }
        attr_writer :custom_file_name

        # Defines the maximum length for the recording in seconds. The minimum value is 0.
        # The maximum value is 14400. The default value is 0 (infinite)
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_length

        sig { params(max_length: Integer).void }
        attr_writer :max_length

        # If enabled, a beep sound will be played at the start of a recording.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :play_beep

        sig { params(play_beep: T::Boolean).void }
        attr_writer :play_beep

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::OrSymbol
            )
          )
        end
        attr_reader :recording_track

        sig do
          params(
            recording_track:
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::OrSymbol
          ).void
        end
        attr_writer :recording_track

        # The number of seconds that Telnyx will wait for the recording to be stopped if
        # silence is detected. The timer only starts when the speech is detected. Please
        # note that call transcription is used to detect silence and the related charge
        # will be applied. The minimum value is 0. The default value is 0 (infinite)
        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_secs

        sig { params(timeout_secs: Integer).void }
        attr_writer :timeout_secs

        # Enable post recording transcription. The default value is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transcription

        sig { params(transcription: T::Boolean).void }
        attr_writer :transcription

        # Engine to use for speech recognition. `A` - `Google`
        sig { returns(T.nilable(String)) }
        attr_reader :transcription_engine

        sig { params(transcription_engine: String).void }
        attr_writer :transcription_engine

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::OrSymbol
            )
          )
        end
        attr_reader :transcription_language

        sig do
          params(
            transcription_language:
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::OrSymbol
          ).void
        end
        attr_writer :transcription_language

        # Defines maximum number of speakers in the conversation. Applies to `google`
        # engine only.
        sig { returns(T.nilable(Integer)) }
        attr_reader :transcription_max_speaker_count

        sig { params(transcription_max_speaker_count: Integer).void }
        attr_writer :transcription_max_speaker_count

        # Defines minimum number of speakers in the conversation. Applies to `google`
        # engine only.
        sig { returns(T.nilable(Integer)) }
        attr_reader :transcription_min_speaker_count

        sig { params(transcription_min_speaker_count: Integer).void }
        attr_writer :transcription_min_speaker_count

        # Enables profanity_filter. Applies to `google` engine only.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transcription_profanity_filter

        sig { params(transcription_profanity_filter: T::Boolean).void }
        attr_writer :transcription_profanity_filter

        # Enables speaker diarization. Applies to `google` engine only.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transcription_speaker_diarization

        sig { params(transcription_speaker_diarization: T::Boolean).void }
        attr_writer :transcription_speaker_diarization

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(Telnyx::Calls::ActionStartRecordingParams::Trim::OrSymbol)
          )
        end
        attr_reader :trim

        sig do
          params(
            trim: Telnyx::Calls::ActionStartRecordingParams::Trim::OrSymbol
          ).void
        end
        attr_writer :trim

        sig do
          params(
            channels:
              Telnyx::Calls::ActionStartRecordingParams::Channels::OrSymbol,
            format_:
              Telnyx::Calls::ActionStartRecordingParams::Format::OrSymbol,
            client_state: String,
            command_id: String,
            custom_file_name: String,
            max_length: Integer,
            play_beep: T::Boolean,
            recording_track:
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::OrSymbol,
            timeout_secs: Integer,
            transcription: T::Boolean,
            transcription_engine: String,
            transcription_language:
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::OrSymbol,
            transcription_max_speaker_count: Integer,
            transcription_min_speaker_count: Integer,
            transcription_profanity_filter: T::Boolean,
            transcription_speaker_diarization: T::Boolean,
            trim: Telnyx::Calls::ActionStartRecordingParams::Trim::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When `dual`, final audio file will be stereo recorded with the first leg on
          # channel A, and the rest on channel B.
          channels:,
          # The audio file format used when storing the call recording. Can be either `mp3`
          # or `wav`.
          format_:,
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state: nil,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # The custom recording file name to be used instead of the default `call_leg_id`.
          # Telnyx will still add a Unix timestamp suffix.
          custom_file_name: nil,
          # Defines the maximum length for the recording in seconds. The minimum value is 0.
          # The maximum value is 14400. The default value is 0 (infinite)
          max_length: nil,
          # If enabled, a beep sound will be played at the start of a recording.
          play_beep: nil,
          # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
          # If only single track is specified (`inbound`, `outbound`), `channels`
          # configuration is ignored and it will be recorded as mono (single channel).
          recording_track: nil,
          # The number of seconds that Telnyx will wait for the recording to be stopped if
          # silence is detected. The timer only starts when the speech is detected. Please
          # note that call transcription is used to detect silence and the related charge
          # will be applied. The minimum value is 0. The default value is 0 (infinite)
          timeout_secs: nil,
          # Enable post recording transcription. The default value is false.
          transcription: nil,
          # Engine to use for speech recognition. `A` - `Google`
          transcription_engine: nil,
          # Language to use for speech recognition
          transcription_language: nil,
          # Defines maximum number of speakers in the conversation. Applies to `google`
          # engine only.
          transcription_max_speaker_count: nil,
          # Defines minimum number of speakers in the conversation. Applies to `google`
          # engine only.
          transcription_min_speaker_count: nil,
          # Enables profanity_filter. Applies to `google` engine only.
          transcription_profanity_filter: nil,
          # Enables speaker diarization. Applies to `google` engine only.
          transcription_speaker_diarization: nil,
          # When set to `trim-silence`, silence will be removed from the beginning and end
          # of the recording.
          trim: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              channels:
                Telnyx::Calls::ActionStartRecordingParams::Channels::OrSymbol,
              format_:
                Telnyx::Calls::ActionStartRecordingParams::Format::OrSymbol,
              client_state: String,
              command_id: String,
              custom_file_name: String,
              max_length: Integer,
              play_beep: T::Boolean,
              recording_track:
                Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::OrSymbol,
              timeout_secs: Integer,
              transcription: T::Boolean,
              transcription_engine: String,
              transcription_language:
                Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::OrSymbol,
              transcription_max_speaker_count: Integer,
              transcription_min_speaker_count: Integer,
              transcription_profanity_filter: T::Boolean,
              transcription_speaker_diarization: T::Boolean,
              trim: Telnyx::Calls::ActionStartRecordingParams::Trim::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # When `dual`, final audio file will be stereo recorded with the first leg on
        # channel A, and the rest on channel B.
        module Channels
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartRecordingParams::Channels)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE =
            T.let(
              :single,
              Telnyx::Calls::ActionStartRecordingParams::Channels::TaggedSymbol
            )
          DUAL =
            T.let(
              :dual,
              Telnyx::Calls::ActionStartRecordingParams::Channels::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartRecordingParams::Channels::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The audio file format used when storing the call recording. Can be either `mp3`
        # or `wav`.
        module Format
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartRecordingParams::Format)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Calls::ActionStartRecordingParams::Format::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Calls::ActionStartRecordingParams::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartRecordingParams::Format::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        module RecordingTrack
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartRecordingParams::RecordingTrack
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTH =
            T.let(
              :both,
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::TaggedSymbol
            )
          INBOUND =
            T.let(
              :inbound,
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartRecordingParams::RecordingTrack::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Language to use for speech recognition
        module TranscriptionLanguage
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF_ZA =
            T.let(
              :"af-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AM_ET =
            T.let(
              :"am-ET",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_AE =
            T.let(
              :"ar-AE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_BH =
            T.let(
              :"ar-BH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_DZ =
            T.let(
              :"ar-DZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_EG =
            T.let(
              :"ar-EG",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_IL =
            T.let(
              :"ar-IL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_IQ =
            T.let(
              :"ar-IQ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_JO =
            T.let(
              :"ar-JO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_KW =
            T.let(
              :"ar-KW",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_LB =
            T.let(
              :"ar-LB",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_MA =
            T.let(
              :"ar-MA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_MR =
            T.let(
              :"ar-MR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_OM =
            T.let(
              :"ar-OM",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_PS =
            T.let(
              :"ar-PS",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_QA =
            T.let(
              :"ar-QA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_SA =
            T.let(
              :"ar-SA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_TN =
            T.let(
              :"ar-TN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AR_YE =
            T.let(
              :"ar-YE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          AZ_AZ =
            T.let(
              :"az-AZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          BG_BG =
            T.let(
              :"bg-BG",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          BN_BD =
            T.let(
              :"bn-BD",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          BN_IN =
            T.let(
              :"bn-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          BS_BA =
            T.let(
              :"bs-BA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          CA_ES =
            T.let(
              :"ca-ES",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          CS_CZ =
            T.let(
              :"cs-CZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          DA_DK =
            T.let(
              :"da-DK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          DE_AT =
            T.let(
              :"de-AT",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          DE_CH =
            T.let(
              :"de-CH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          DE_DE =
            T.let(
              :"de-DE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EL_GR =
            T.let(
              :"el-GR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_AU =
            T.let(
              :"en-AU",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_CA =
            T.let(
              :"en-CA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_GB =
            T.let(
              :"en-GB",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_GH =
            T.let(
              :"en-GH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_HK =
            T.let(
              :"en-HK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_IE =
            T.let(
              :"en-IE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_IN =
            T.let(
              :"en-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_KE =
            T.let(
              :"en-KE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_NG =
            T.let(
              :"en-NG",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_NZ =
            T.let(
              :"en-NZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_PH =
            T.let(
              :"en-PH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_PK =
            T.let(
              :"en-PK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_SG =
            T.let(
              :"en-SG",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_TZ =
            T.let(
              :"en-TZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_US =
            T.let(
              :"en-US",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EN_ZA =
            T.let(
              :"en-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_AR =
            T.let(
              :"es-AR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_BO =
            T.let(
              :"es-BO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_CL =
            T.let(
              :"es-CL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_CO =
            T.let(
              :"es-CO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_CR =
            T.let(
              :"es-CR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_DO =
            T.let(
              :"es-DO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_EC =
            T.let(
              :"es-EC",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_ES =
            T.let(
              :"es-ES",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_GT =
            T.let(
              :"es-GT",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_HN =
            T.let(
              :"es-HN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_MX =
            T.let(
              :"es-MX",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_NI =
            T.let(
              :"es-NI",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_PA =
            T.let(
              :"es-PA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_PE =
            T.let(
              :"es-PE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_PR =
            T.let(
              :"es-PR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_PY =
            T.let(
              :"es-PY",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_SV =
            T.let(
              :"es-SV",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_US =
            T.let(
              :"es-US",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_UY =
            T.let(
              :"es-UY",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ES_VE =
            T.let(
              :"es-VE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ET_EE =
            T.let(
              :"et-EE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          EU_ES =
            T.let(
              :"eu-ES",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FA_IR =
            T.let(
              :"fa-IR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FI_FI =
            T.let(
              :"fi-FI",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FIL_PH =
            T.let(
              :"fil-PH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FR_BE =
            T.let(
              :"fr-BE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FR_CA =
            T.let(
              :"fr-CA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FR_CH =
            T.let(
              :"fr-CH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          FR_FR =
            T.let(
              :"fr-FR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          GL_ES =
            T.let(
              :"gl-ES",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          GU_IN =
            T.let(
              :"gu-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          HI_IN =
            T.let(
              :"hi-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          HR_HR =
            T.let(
              :"hr-HR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          HU_HU =
            T.let(
              :"hu-HU",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          HY_AM =
            T.let(
              :"hy-AM",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ID_ID =
            T.let(
              :"id-ID",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          IS_IS =
            T.let(
              :"is-IS",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          IT_CH =
            T.let(
              :"it-CH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          IT_IT =
            T.let(
              :"it-IT",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          IW_IL =
            T.let(
              :"iw-IL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          JA_JP =
            T.let(
              :"ja-JP",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          JV_ID =
            T.let(
              :"jv-ID",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          KA_GE =
            T.let(
              :"ka-GE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          KK_KZ =
            T.let(
              :"kk-KZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          KM_KH =
            T.let(
              :"km-KH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          KN_IN =
            T.let(
              :"kn-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          KO_KR =
            T.let(
              :"ko-KR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          LO_LA =
            T.let(
              :"lo-LA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          LT_LT =
            T.let(
              :"lt-LT",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          LV_LV =
            T.let(
              :"lv-LV",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          MK_MK =
            T.let(
              :"mk-MK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ML_IN =
            T.let(
              :"ml-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          MN_MN =
            T.let(
              :"mn-MN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          MR_IN =
            T.let(
              :"mr-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          MS_MY =
            T.let(
              :"ms-MY",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          MY_MM =
            T.let(
              :"my-MM",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          NE_NP =
            T.let(
              :"ne-NP",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          NL_BE =
            T.let(
              :"nl-BE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          NL_NL =
            T.let(
              :"nl-NL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          NO_NO =
            T.let(
              :"no-NO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          PA_GURU_IN =
            T.let(
              :"pa-Guru-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          PL_PL =
            T.let(
              :"pl-PL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          PT_BR =
            T.let(
              :"pt-BR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          PT_PT =
            T.let(
              :"pt-PT",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          RO_RO =
            T.let(
              :"ro-RO",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          RU_RU =
            T.let(
              :"ru-RU",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          RW_RW =
            T.let(
              :"rw-RW",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SI_LK =
            T.let(
              :"si-LK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SK_SK =
            T.let(
              :"sk-SK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SL_SI =
            T.let(
              :"sl-SI",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SQ_AL =
            T.let(
              :"sq-AL",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SR_RS =
            T.let(
              :"sr-RS",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SS_LATN_ZA =
            T.let(
              :"ss-latn-za",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ST_ZA =
            T.let(
              :"st-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SU_ID =
            T.let(
              :"su-ID",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SV_SE =
            T.let(
              :"sv-SE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SW_KE =
            T.let(
              :"sw-KE",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          SW_TZ =
            T.let(
              :"sw-TZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TA_IN =
            T.let(
              :"ta-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TA_LK =
            T.let(
              :"ta-LK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TA_MY =
            T.let(
              :"ta-MY",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TA_SG =
            T.let(
              :"ta-SG",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TE_IN =
            T.let(
              :"te-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TH_TH =
            T.let(
              :"th-TH",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TN_LATN_ZA =
            T.let(
              :"tn-latn-za",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TR_TR =
            T.let(
              :"tr-TR",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          TS_ZA =
            T.let(
              :"ts-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          UK_UA =
            T.let(
              :"uk-UA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          UR_IN =
            T.let(
              :"ur-IN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          UR_PK =
            T.let(
              :"ur-PK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          UZ_UZ =
            T.let(
              :"uz-UZ",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          VE_ZA =
            T.let(
              :"ve-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          VI_VN =
            T.let(
              :"vi-VN",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          XH_ZA =
            T.let(
              :"xh-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          YUE_HANT_HK =
            T.let(
              :"yue-Hant-HK",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ZH_TW =
            T.let(
              :"zh-TW",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )
          ZU_ZA =
            T.let(
              :"zu-ZA",
              Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module Trim
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::ActionStartRecordingParams::Trim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Calls::ActionStartRecordingParams::Trim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionStartRecordingParams::Trim::TaggedSymbol
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
