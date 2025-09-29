# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionRecordStartParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionRecordStartParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The audio file format used when storing the conference recording. Can be either
        # `mp3` or `wav`.
        sig do
          returns(
            Telnyx::Conferences::ActionRecordStartParams::Format::OrSymbol
          )
        end
        attr_accessor :format_

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `conference_id`.
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

        # If enabled, a beep sound will be played at the start of a recording.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :play_beep

        sig { params(play_beep: T::Boolean).void }
        attr_writer :play_beep

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionRecordStartParams::Trim::OrSymbol
            )
          )
        end
        attr_reader :trim

        sig do
          params(
            trim: Telnyx::Conferences::ActionRecordStartParams::Trim::OrSymbol
          ).void
        end
        attr_writer :trim

        sig do
          params(
            format_:
              Telnyx::Conferences::ActionRecordStartParams::Format::OrSymbol,
            command_id: String,
            custom_file_name: String,
            play_beep: T::Boolean,
            trim: Telnyx::Conferences::ActionRecordStartParams::Trim::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The audio file format used when storing the conference recording. Can be either
          # `mp3` or `wav`.
          format_:,
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `conference_id`.
          command_id: nil,
          # The custom recording file name to be used instead of the default `call_leg_id`.
          # Telnyx will still add a Unix timestamp suffix.
          custom_file_name: nil,
          # If enabled, a beep sound will be played at the start of a recording.
          play_beep: nil,
          # When set to `trim-silence`, silence will be removed from the beginning and end
          # of the recording.
          trim: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              format_:
                Telnyx::Conferences::ActionRecordStartParams::Format::OrSymbol,
              command_id: String,
              custom_file_name: String,
              play_beep: T::Boolean,
              trim:
                Telnyx::Conferences::ActionRecordStartParams::Trim::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The audio file format used when storing the conference recording. Can be either
        # `mp3` or `wav`.
        module Format
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Conferences::ActionRecordStartParams::Format
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WAV =
            T.let(
              :wav,
              Telnyx::Conferences::ActionRecordStartParams::Format::TaggedSymbol
            )
          MP3 =
            T.let(
              :mp3,
              Telnyx::Conferences::ActionRecordStartParams::Format::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionRecordStartParams::Format::TaggedSymbol
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
              T.all(Symbol, Telnyx::Conferences::ActionRecordStartParams::Trim)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRIM_SILENCE =
            T.let(
              :"trim-silence",
              Telnyx::Conferences::ActionRecordStartParams::Trim::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionRecordStartParams::Trim::TaggedSymbol
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
