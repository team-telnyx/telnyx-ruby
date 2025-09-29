# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Accounts#retrieve_transcriptions_json
      class AccountRetrieveTranscriptionsJsonParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

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

        # @!method initialize(page_size: nil, page_token: nil, request_options: {})
        #   @param page_size [Integer] The number of records to be displayed on a page
        #
        #   @param page_token [String] Used to request the next page of results.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
