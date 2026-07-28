# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#list
    class EmailUnsubscribeGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #   Offset page number (≥1, default 1).
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size (1–100, default 25).
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   @param page_number [Integer] Offset page number (≥1, default 1).
      #
      #   @param page_size [Integer] Page size (1–100, default 25).
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
