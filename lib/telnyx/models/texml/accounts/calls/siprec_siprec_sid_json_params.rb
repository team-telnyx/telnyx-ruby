# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::Siprec#siprec_sid_json
          class SiprecSiprecSidJsonParams < Telnyx::Internal::Type::BaseModel
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
            #   The new status of the resource. Specifying `stopped` will end the siprec
            #   session.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Texml::Accounts::Calls::SiprecSiprecSidJsonParams::Status },
                     api_name: :Status

            # @!method initialize(account_sid:, call_sid:, status: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams} for more
            #   details.
            #
            #   @param account_sid [String]
            #
            #   @param call_sid [String]
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonParams::Status] The new status of the resource. Specifying `stopped` will end the siprec session
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

            # The new status of the resource. Specifying `stopped` will end the siprec
            # session.
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
