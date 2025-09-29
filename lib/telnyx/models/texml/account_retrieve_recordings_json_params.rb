# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Accounts#retrieve_recordings_json
      class AccountRetrieveRecordingsJsonParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute date_created
        #   Filters recording by the creation date. Expected format is ISO8601 date or
        #   date-time, ie. {YYYY}-{MM}-{DD} or {YYYY}-{MM}-{DD}T{hh}:{mm}:{ss}Z. Also
        #   accepts inequality operators, e.g. DateCreated>=2023-05-22.
        #
        #   @return [Time, nil]
        optional :date_created, Time

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

        # @!method initialize(date_created: nil, page: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Texml::AccountRetrieveRecordingsJsonParams} for more details.
        #
        #   @param date_created [Time] Filters recording by the creation date. Expected format is ISO8601 date or date-
        #
        #   @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
        #
        #   @param page_size [Integer] The number of records to be displayed on a page
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
