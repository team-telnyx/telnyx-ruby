# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::Streams#streaming_sid_json
          class StreamStreamingSidJsonParams < Telnyx::Internal::Type::BaseModel
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
            #   The status of the Stream you wish to update.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::StreamStreamingSidJsonParams::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Texml::Accounts::Calls::StreamStreamingSidJsonParams::Status },
                     api_name: :Status

            # @!method initialize(account_sid:, call_sid:, status: nil, request_options: {})
            #   @param account_sid [String]
            #
            #   @param call_sid [String]
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::StreamStreamingSidJsonParams::Status] The status of the Stream you wish to update.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # The status of the Stream you wish to update.
            module Status
              extend Telnyx::Internal::Type::Enum

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
