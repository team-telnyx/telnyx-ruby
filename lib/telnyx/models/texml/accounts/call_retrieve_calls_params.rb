# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#retrieve_calls
        class CallRetrieveCallsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute end_time
          #   Filters calls by their end date. Expected format is YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :end_time, String

          # @!attribute end_time_gt
          #   Filters calls by their end date (after). Expected format is YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :end_time_gt, String

          # @!attribute end_time_lt
          #   Filters calls by their end date (before). Expected format is YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :end_time_lt, String

          # @!attribute from
          #   Filters calls by the from number.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute page
          #   The number of the page to be displayed, zero-indexed, should be used in
          #   conjuction with PageToken.
          #
          #   @return [Integer, nil]
          optional :page, Integer

          # @!attribute page_size
          #   The number of records to be displayed on a page
          #
          #   @return [Integer, nil]
          optional :page_size, Integer

          # @!attribute page_token
          #   Used to request the next page of results.
          #
          #   @return [String, nil]
          optional :page_token, String

          # @!attribute start_time
          #   Filters calls by their start date. Expected format is YYYY-MM-DD.
          #
          #   @return [String, nil]
          optional :start_time, String

          # @!attribute start_time_gt
          #   Filters calls by their start date (after). Expected format is YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :start_time_gt, String

          # @!attribute start_time_lt
          #   Filters calls by their start date (before). Expected format is YYYY-MM-DD
          #
          #   @return [String, nil]
          optional :start_time_lt, String

          # @!attribute status
          #   Filters calls by status.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams::Status, nil]
          optional :status, enum: -> { Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status }

          # @!attribute to
          #   Filters calls by the to number.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(end_time: nil, end_time_gt: nil, end_time_lt: nil, from: nil, page: nil, page_size: nil, page_token: nil, start_time: nil, start_time_gt: nil, start_time_lt: nil, status: nil, to: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams} for more details.
          #
          #   @param end_time [String] Filters calls by their end date. Expected format is YYYY-MM-DD
          #
          #   @param end_time_gt [String] Filters calls by their end date (after). Expected format is YYYY-MM-DD
          #
          #   @param end_time_lt [String] Filters calls by their end date (before). Expected format is YYYY-MM-DD
          #
          #   @param from [String] Filters calls by the from number.
          #
          #   @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
          #
          #   @param page_size [Integer] The number of records to be displayed on a page
          #
          #   @param page_token [String] Used to request the next page of results.
          #
          #   @param start_time [String] Filters calls by their start date. Expected format is YYYY-MM-DD.
          #
          #   @param start_time_gt [String] Filters calls by their start date (after). Expected format is YYYY-MM-DD
          #
          #   @param start_time_lt [String] Filters calls by their start date (before). Expected format is YYYY-MM-DD
          #
          #   @param status [Symbol, Telnyx::Models::Texml::Accounts::CallRetrieveCallsParams::Status] Filters calls by status.
          #
          #   @param to [String] Filters calls by the to number.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # Filters calls by status.
          module Status
            extend Telnyx::Internal::Type::Enum

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
