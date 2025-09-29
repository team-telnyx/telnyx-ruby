# frozen_string_literal: true

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          # @see Telnyx::Resources::Legacy::Reporting::UsageReports::Voice#list
          class VoiceListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute page
            #   Page number
            #
            #   @return [Integer, nil]
            optional :page, Integer

            # @!attribute per_page
            #   Size of the page
            #
            #   @return [Integer, nil]
            optional :per_page, Integer

            # @!method initialize(page: nil, per_page: nil, request_options: {})
            #   @param page [Integer] Page number
            #
            #   @param per_page [Integer] Size of the page
            #
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
