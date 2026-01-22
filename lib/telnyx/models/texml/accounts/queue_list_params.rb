# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Queues#list
        class QueueListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute date_created
          #   Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also
          #   accepts inequality operators, e.g. DateCreated>=2023-05-22.
          #
          #   @return [String, nil]
          optional :date_created, String

          # @!attribute date_updated
          #   Filters conferences by the time they were last updated. Expected format is
          #   YYYY-MM-DD. Also accepts inequality operators, e.g. DateUpdated>=2023-05-22.
          #
          #   @return [String, nil]
          optional :date_updated, String

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

          # @!method initialize(date_created: nil, date_updated: nil, page: nil, page_size: nil, page_token: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Texml::Accounts::QueueListParams} for more details.
          #
          #   @param date_created [String] Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also ac
          #
          #   @param date_updated [String] Filters conferences by the time they were last updated. Expected format is YYYY-
          #
          #   @param page [Integer] The number of the page to be displayed, zero-indexed, should be used in conjucti
          #
          #   @param page_size [Integer] The number of records to be displayed on a page
          #
          #   @param page_token [String] Used to request the next page of results.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
