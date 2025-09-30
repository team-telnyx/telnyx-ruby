# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#retrieve
        class CallRetrieveResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute account_sid
          #   The id of the account the resource belongs to.
          #
          #   @return [String, nil]
          optional :account_sid, String

          # @!attribute answered_by
          #   The value of the answering machine detection result, if this feature was enabled
          #   for the call.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::AnsweredBy, nil]
          optional :answered_by, enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveResponse::AnsweredBy }

          # @!attribute caller_name
          #   Caller ID, if present.
          #
          #   @return [String, nil]
          optional :caller_name, String

          # @!attribute date_created
          #   The timestamp of when the resource was created.
          #
          #   @return [String, nil]
          optional :date_created, String

          # @!attribute date_updated
          #   The timestamp of when the resource was last updated.
          #
          #   @return [String, nil]
          optional :date_updated, String

          # @!attribute direction
          #   The direction of this call.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Direction, nil]
          optional :direction, enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Direction }

          # @!attribute duration
          #   The duration of this call, given in seconds.
          #
          #   @return [String, nil]
          optional :duration, String

          # @!attribute end_time
          #   The end time of this call.
          #
          #   @return [String, nil]
          optional :end_time, String

          # @!attribute from
          #   The phone number or SIP address that made this call.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute from_formatted
          #   The from number formatted for display.
          #
          #   @return [String, nil]
          optional :from_formatted, String

          # @!attribute price
          #   The price of this call, the currency is specified in the price_unit field. Only
          #   populated when the call cost feature is enabled for the account.
          #
          #   @return [String, nil]
          optional :price, String

          # @!attribute price_unit
          #   The unit in which the price is given.
          #
          #   @return [String, nil]
          optional :price_unit, String

          # @!attribute sid
          #   The identifier of this call.
          #
          #   @return [String, nil]
          optional :sid, String

          # @!attribute start_time
          #   The start time of this call.
          #
          #   @return [String, nil]
          optional :start_time, String

          # @!attribute status
          #   The status of this call.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Status }

          # @!attribute to
          #   The phone number or SIP address that received this call.
          #
          #   @return [String, nil]
          optional :to, String

          # @!attribute to_formatted
          #   The to number formatted for display.
          #
          #   @return [String, nil]
          optional :to_formatted, String

          # @!attribute uri
          #   The relative URI for this call.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(account_sid: nil, answered_by: nil, caller_name: nil, date_created: nil, date_updated: nil, direction: nil, duration: nil, end_time: nil, from: nil, from_formatted: nil, price: nil, price_unit: nil, sid: nil, start_time: nil, status: nil, to: nil, to_formatted: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::CallRetrieveResponse} for more details.
          #
          #   @param account_sid [String] The id of the account the resource belongs to.
          #
          #   @param answered_by [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::AnsweredBy] The value of the answering machine detection result, if this feature was enabled
          #
          #   @param caller_name [String] Caller ID, if present.
          #
          #   @param date_created [String] The timestamp of when the resource was created.
          #
          #   @param date_updated [String] The timestamp of when the resource was last updated.
          #
          #   @param direction [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Direction] The direction of this call.
          #
          #   @param duration [String] The duration of this call, given in seconds.
          #
          #   @param end_time [String] The end time of this call.
          #
          #   @param from [String] The phone number or SIP address that made this call.
          #
          #   @param from_formatted [String] The from number formatted for display.
          #
          #   @param price [String] The price of this call, the currency is specified in the price_unit field. Only
          #
          #   @param price_unit [String] The unit in which the price is given.
          #
          #   @param sid [String] The identifier of this call.
          #
          #   @param start_time [String] The start time of this call.
          #
          #   @param status [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveResponse::Status] The status of this call.
          #
          #   @param to [String] The phone number or SIP address that received this call.
          #
          #   @param to_formatted [String] The to number formatted for display.
          #
          #   @param uri [String] The relative URI for this call.

          # The value of the answering machine detection result, if this feature was enabled
          # for the call.
          #
          # @see Telnyx::Models::Texml::Accounts::CallRetrieveResponse#answered_by
          module AnsweredBy
            extend Telnyx::Internal::Type::Enum

            HUMAN = :human
            MACHINE = :machine
            NOT_SURE = :not_sure

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The direction of this call.
          #
          # @see Telnyx::Models::Texml::Accounts::CallRetrieveResponse#direction
          module Direction
            extend Telnyx::Internal::Type::Enum

            INBOUND = :inbound
            OUTBOUND = :outbound

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The status of this call.
          #
          # @see Telnyx::Models::Texml::Accounts::CallRetrieveResponse#status
          module Status
            extend Telnyx::Internal::Type::Enum

            RINGING = :ringing
            IN_PROGRESS = :"in-progress"
            CANCELED = :canceled
            COMPLETED = :completed
            FAILED = :failed
            BUSY = :busy
            NO_ANSWER = :"no-answer"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
