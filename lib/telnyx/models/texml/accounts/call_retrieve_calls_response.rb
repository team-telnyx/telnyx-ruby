# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#retrieve_calls
        class CallRetrieveCallsResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute calls
          #
          #   @return [Array<Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call>, nil]
          optional :calls,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call] }

          # @!attribute end_
          #   The number of the last element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :end_, Integer, api_name: :end

          # @!attribute first_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSize=1
          #
          #   @return [String, nil]
          optional :first_page_uri, String

          # @!attribute next_page_uri
          #   /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          #
          #   @return [String, nil]
          optional :next_page_uri, String

          # @!attribute page
          #   Current page number, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :page, Integer

          # @!attribute page_size
          #   The number of items on the page
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute start
          #   The number of the first element on the page, zero-indexed.
          #
          #   @return [Integer, nil]
          optional :start, Integer

          # @!attribute uri
          #   The URI of the current page.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(calls: nil, end_: nil, first_page_uri: nil, next_page_uri: nil, page: nil, page_size: nil, start: nil, uri: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse} for more details.
          #
          #   @param calls [Array<Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call>]
          #
          #   @param end_ [Integer] The number of the last element on the page, zero-indexed.
          #
          #   @param first_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSi
          #
          #   @param next_page_uri [String] /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSi
          #
          #   @param page [Integer] Current page number, zero-indexed.
          #
          #   @param page_size [Integer] The number of items on the page
          #
          #   @param start [Integer] The number of the first element on the page, zero-indexed.
          #
          #   @param uri [String] The URI of the current page.

          class Call < Telnyx::Internal::Type::BaseModel
            # @!attribute account_sid
            #   The id of the account the resource belongs to.
            #
            #   @return [String, nil]
            optional :account_sid, String

            # @!attribute answered_by
            #   The value of the answering machine detection result, if this feature was enabled
            #   for the call.
            #
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy, nil]
            optional :answered_by,
                     enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy }

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
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction, nil]
            optional :direction,
                     enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction }

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
            #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status, nil]
            optional :status, enum: -> { Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status }

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
            #   {Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call} for more
            #   details.
            #
            #   @param account_sid [String] The id of the account the resource belongs to.
            #
            #   @param answered_by [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy] The value of the answering machine detection result, if this feature was enabled
            #
            #   @param caller_name [String] Caller ID, if present.
            #
            #   @param date_created [String] The timestamp of when the resource was created.
            #
            #   @param date_updated [String] The timestamp of when the resource was last updated.
            #
            #   @param direction [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction] The direction of this call.
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
            #   @param status [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status] The status of this call.
            #
            #   @param to [String] The phone number or SIP address that received this call.
            #
            #   @param to_formatted [String] The to number formatted for display.
            #
            #   @param uri [String] The relative URI for this call.

            # The value of the answering machine detection result, if this feature was enabled
            # for the call.
            #
            # @see Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call#answered_by
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
            # @see Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call#direction
            module Direction
              extend Telnyx::Internal::Type::Enum

              INBOUND = :inbound
              OUTBOUND = :outbound

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of this call.
            #
            # @see Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call#status
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
end
