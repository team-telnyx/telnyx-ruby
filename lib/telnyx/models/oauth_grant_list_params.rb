# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#list
    class OAuthGrantListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #   Page number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   @param page_number [Integer] Page number
      #
      #   @param page_size [Integer] Number of results per page
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
