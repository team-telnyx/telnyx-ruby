# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::Recordings#recording_sid_json
          class RecordingRecordingSidJsonParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!attribute call_sid
            #
            #   @return [String]
            required :call_sid, String

            # @!attribute status
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status },
                     api_name: :Status

            # @!method initialize(account_sid:, call_sid:, status: nil, request_options: {})
            #   @param account_sid [String]
            #   @param call_sid [String]
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            module Status
              extend Telnyx::Internal::Type::Enum

              IN_PROGRESS = :"in-progress"
              PAUSED = :paused
              STOPPED = :stopped

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
