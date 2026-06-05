# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallReasons#list
    class CallReasonListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #   1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Items per page. Default `100` for this endpoint (the call-reason library is
      #   small and most callers want the whole list in one call). Maximum 250; values
      #   above are clamped to 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CallReasonListParams} for more details.
      #
      #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @param page_size [Integer] Items per page. Default `100` for this endpoint (the call-reason library is smal
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
