# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenGroups#list
      class TokenGroupListParams < Telnyx::Internal::Type::BaseModel
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

        # @!attribute page_snapshot
        #   Required after page 1; account/filter-bound 15-minute stable snapshot;
        #   expired/mismatch 409.
        #
        #   @return [String, nil]
        optional :page_snapshot, String

        # @!method initialize(page_number: nil, page_size: nil, page_snapshot: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::TokenGroupListParams} for more details.
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
