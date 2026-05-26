# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceSDKCallReports#list
    class VoiceSDKCallReportListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Set the order of the results by creation date. `asc` and `created_at` sort
      #   oldest reports first; `desc` and `-created_at` sort newest reports first. If not
      #   given, results are sorted by creation date in descending order.
      #
      #   @return [Symbol, Telnyx::Models::VoiceSDKCallReportListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::VoiceSDKCallReportListParams::Sort }

      # @!method initialize(page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VoiceSDKCallReportListParams} for more details.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::VoiceSDKCallReportListParams::Sort] Set the order of the results by creation date. `asc` and `created_at` sort oldes
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Set the order of the results by creation date. `asc` and `created_at` sort
      # oldest reports first; `desc` and `-created_at` sort newest reports first. If not
      # given, results are sorted by creation date in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        ASC = :asc
        DESC = :desc
        CREATED_AT = :created_at
        CREATED_AT_DESC = :"-created_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
