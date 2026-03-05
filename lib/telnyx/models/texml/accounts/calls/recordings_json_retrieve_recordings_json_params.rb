# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::RecordingsJson#retrieve_recordings_json
          class RecordingsJsonRetrieveRecordingsJsonParams < Telnyx::Internal::Type::BaseModel
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

            # @!method initialize(account_sid:, call_sid:, request_options: {})
            #   @param account_sid [String]
            #   @param call_sid [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
