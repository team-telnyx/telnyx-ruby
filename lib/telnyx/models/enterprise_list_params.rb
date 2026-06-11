# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Enterprises#list
    class EnterpriseListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_legal_name_contains
      #   Case-insensitive partial match on legal name.
      #
      #   @return [String, nil]
      optional :filter_legal_name_contains, String

      # @!attribute legal_name
      #   Filter by legal name (partial match).
      #
      #   @return [String, nil]
      optional :legal_name, String

      # @!attribute page_number
      #   1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Items per page. Default 10. Maximum 250; values above are clamped to 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_legal_name_contains: nil, legal_name: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EnterpriseListParams} for more details.
      #
      #   @param filter_legal_name_contains [String] Case-insensitive partial match on legal name.
      #
      #   @param legal_name [String] Filter by legal name (partial match).
      #
      #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
      #
      #   @param page_size [Integer] Items per page. Default 10. Maximum 250; values above are clamped to 250.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
