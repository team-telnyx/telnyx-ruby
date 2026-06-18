# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # Defines how the recording was created.
          module RecordingSource
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::Texml::Accounts::Calls::RecordingSource)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            START_CALL_RECORDING_API =
              T.let(
                :StartCallRecordingAPI,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            START_CONFERENCE_RECORDING_API =
              T.let(
                :StartConferenceRecordingAPI,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            OUTBOUND_API =
              T.let(
                :OutboundAPI,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            DIAL_VERB =
              T.let(
                :DialVerb,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            CONFERENCE =
              T.let(
                :Conference,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            RECORD_VERB =
              T.let(
                :RecordVerb,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )
            TRUNKING =
              T.let(
                :Trunking,
                Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::Calls::RecordingSource::TaggedSymbol
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
