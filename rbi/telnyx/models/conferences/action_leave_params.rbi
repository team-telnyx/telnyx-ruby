# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionLeaveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionLeaveParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier and token for controlling the call
        sig { returns(String) }
        attr_accessor :call_control_id

        # Whether a beep sound should be played when the participant leaves the
        # conference. Can be used to override the conference-level setting.
        sig do
          returns(
            T.nilable(
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::OrSymbol
            )
          )
        end
        attr_reader :beep_enabled

        sig do
          params(
            beep_enabled:
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::OrSymbol
          ).void
        end
        attr_writer :beep_enabled

        # Use this field to avoid execution of duplicate commands. Telnyx will ignore
        # subsequent commands with the same `command_id` as one that has already been
        # executed.
        sig { returns(T.nilable(String)) }
        attr_reader :command_id

        sig { params(command_id: String).void }
        attr_writer :command_id

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(
            T.nilable(Telnyx::Conferences::ActionLeaveParams::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::Conferences::ActionLeaveParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        sig do
          params(
            call_control_id: String,
            beep_enabled:
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::OrSymbol,
            command_id: String,
            region: Telnyx::Conferences::ActionLeaveParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier and token for controlling the call
          call_control_id:,
          # Whether a beep sound should be played when the participant leaves the
          # conference. Can be used to override the conference-level setting.
          beep_enabled: nil,
          # Use this field to avoid execution of duplicate commands. Telnyx will ignore
          # subsequent commands with the same `command_id` as one that has already been
          # executed.
          command_id: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              beep_enabled:
                Telnyx::Conferences::ActionLeaveParams::BeepEnabled::OrSymbol,
              command_id: String,
              region: Telnyx::Conferences::ActionLeaveParams::Region::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Whether a beep sound should be played when the participant leaves the
        # conference. Can be used to override the conference-level setting.
        module BeepEnabled
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionLeaveParams::BeepEnabled)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALWAYS =
            T.let(
              :always,
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::TaggedSymbol
            )
          NEVER =
            T.let(
              :never,
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::TaggedSymbol
            )
          ON_ENTER =
            T.let(
              :on_enter,
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::TaggedSymbol
            )
          ON_EXIT =
            T.let(
              :on_exit,
              Telnyx::Conferences::ActionLeaveParams::BeepEnabled::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionLeaveParams::BeepEnabled::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Conferences::ActionLeaveParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Conferences::ActionLeaveParams::Region::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Conferences::ActionLeaveParams::Region::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Conferences::ActionLeaveParams::Region::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::Conferences::ActionLeaveParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionLeaveParams::Region::TaggedSymbol
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
