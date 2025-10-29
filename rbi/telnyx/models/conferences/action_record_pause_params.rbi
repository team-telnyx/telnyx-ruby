# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionRecordPauseParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionRecordPauseParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to avoid duplicate commands. Telnyx will ignore any command with
        # the same `command_id` for the same `call_control_id`.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Use this field to pause specific recording.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_id

        sig { params(recording_id: String).void }
        attr_writer :recording_id

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionRecordPauseParams::Region::OrSymbol
            )
          )
        end
        attr_reader :region

        sig do
          params(
            region:
              Telnyx::Conferences::ActionRecordPauseParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        sig do
          params(
            command_id: String,
            recording_id: String,
            region:
              Telnyx::Conferences::ActionRecordPauseParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to avoid duplicate commands. Telnyx will ignore any command with
          # the same `command_id` for the same `call_control_id`.
          command_id: nil,
          # Use this field to pause specific recording.
          recording_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              command_id: String,
              recording_id: String,
              region:
                Telnyx::Conferences::ActionRecordPauseParams::Region::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Conferences::ActionRecordPauseParams::Region
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Conferences::ActionRecordPauseParams::Region::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Conferences::ActionRecordPauseParams::Region::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Conferences::ActionRecordPauseParams::Region::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::Conferences::ActionRecordPauseParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionRecordPauseParams::Region::TaggedSymbol
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
