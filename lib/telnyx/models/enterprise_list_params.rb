# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#list
    class EnterpriseListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute legal_name
      #   Filter by legal name (partial match)
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute page_number
      #   Page number (1-indexed)
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of items per page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(legal_name: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param legal_name [String] Filter by legal name (partial match)
      #
      #   @param page_number [Integer] Page number (1-indexed)
      #
      #   @param page_size [Integer] Number of items per page
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
