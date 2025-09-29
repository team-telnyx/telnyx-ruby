# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Transcriptions
          # @see Telnyx::Resources::Texml::Accounts::Transcriptions::Json#retrieve_recording_transcription_sid_json
          class JsonRetrieveRecordingTranscriptionSidJsonParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!method initialize(account_sid:, request_options: {})
            #   @param account_sid [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
