# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # Defines how the recording was created.
          module RecordingSource
            extend Telnyx::Internal::Type::Enum

            START_CALL_RECORDING_API = :StartCallRecordingAPI
            START_CONFERENCE_RECORDING_API = :StartConferenceRecordingAPI
            OUTBOUND_API = :OutboundAPI
            DIAL_VERB = :DialVerb
            CONFERENCE = :Conference
            RECORD_VERB = :RecordVerb
            TRUNKING = :Trunking

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
