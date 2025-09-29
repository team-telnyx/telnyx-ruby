# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          # @see Telnyx::Resources::Texml::Accounts::Calls::Siprec#siprec_sid_json
          class SiprecSiprecSidJsonResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute call_sid
            #   The id of the call the resource belongs to.
            #
            #   @return [String, nil]
            optional :call_sid, String

            # @!attribute date_updated
            #   The date and time the siprec session was last updated.
            #
            #   @return [String, nil]
            optional :date_updated, String

            # @!attribute error_code
            #   The error code of the siprec session.
            #
            #   @return [String, nil]
            optional :error_code, String

            # @!attribute sid
            #   The SID of the siprec session.
            #
            #   @return [String, nil]
            optional :sid, String

            # @!attribute status
            #   The status of the siprec session.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status, nil]
            optional :status, enum: -> { Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status }

            # @!attribute uri
            #   The URI of the siprec session.
            #
            #   @return [String, nil]
            optional :uri, String

            # @!method initialize(account_sid: nil, call_sid: nil, date_updated: nil, error_code: nil, sid: nil, status: nil, uri: nil)
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param call_sid [String] The id of the call the resource belongs to.
            #
            #   @param date_updated [String] The date and time the siprec session was last updated.
            #
            #   @param error_code [String] The error code of the siprec session.
            #
            #   @param sid [String] The SID of the siprec session.
            #
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status] The status of the siprec session.
            #
            #   @param uri [String] The URI of the siprec session.

            # The status of the siprec session.
            #
            # @see Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse#status
            module Status
              extend Telnyx::Internal::Type::Enum

              IN_PROGRESS = :"in-progress"
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
