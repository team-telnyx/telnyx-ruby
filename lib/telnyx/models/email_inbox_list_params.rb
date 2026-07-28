# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailInboxes#list
    class EmailInboxListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_cursor
      #   Opaque cursor returned by the previous inbox page.
      #
      #   @return [String, nil]
      optional :page_cursor, String

      # @!attribute page_size
      #   Number of results to return. Defaults to 20; maximum is 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_cursor: nil, page_size: nil, request_options: {})
      #   @param page_cursor [String] Opaque cursor returned by the previous inbox page.
      #
      #   @param page_size [Integer] Number of results to return. Defaults to 20; maximum is 250.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
