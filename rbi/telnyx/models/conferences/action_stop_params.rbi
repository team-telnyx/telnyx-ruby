# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionStopParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionStopParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of call control ids identifying participants the audio file should stop be
        # played to. If not given, the audio will be stoped to the entire conference.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        # Region where the conference data is located. Defaults to the region defined in
        # user's data locality settings (Europe or US).
        sig do
          returns(
            T.nilable(Telnyx::Conferences::ActionStopParams::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::Conferences::ActionStopParams::Region::OrSymbol
          ).void
        end
        attr_writer :region

        sig do
          params(
            call_control_ids: T::Array[String],
            region: Telnyx::Conferences::ActionStopParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of call control ids identifying participants the audio file should stop be
          # played to. If not given, the audio will be stoped to the entire conference.
          call_control_ids: nil,
          # Region where the conference data is located. Defaults to the region defined in
          # user's data locality settings (Europe or US).
          region: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_ids: T::Array[String],
              region: Telnyx::Conferences::ActionStopParams::Region::OrSymbol,
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
              T.all(Symbol, Telnyx::Conferences::ActionStopParams::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::Conferences::ActionStopParams::Region::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::Conferences::ActionStopParams::Region::TaggedSymbol
            )
          MIDDLE_EAST =
            T.let(
              :"Middle East",
              Telnyx::Conferences::ActionStopParams::Region::TaggedSymbol
            )
          US =
            T.let(
              :US,
              Telnyx::Conferences::ActionStopParams::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Conferences::ActionStopParams::Region::TaggedSymbol
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
