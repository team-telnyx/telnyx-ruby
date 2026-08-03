# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::NumberLookup#list
          class NumberLookupListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute page
            #   Page number to retrieve (1-based).
            #
            #   @return [Integer, nil]
            optional :page, Integer

            # @!attribute per_page
            #   Filter results by per page.
            #
            #   @return [Integer, nil]
            optional :per_page, Integer

            # @!method initialize(page: nil, per_page: nil, request_options: {})
            #   @param page [Integer] Page number to retrieve (1-based).
            #
            #   @param per_page [Integer] Filter results by per page.
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
