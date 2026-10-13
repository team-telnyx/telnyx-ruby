# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::TokenKeys#list
      class TokenKeyListParams < Telnyx::Internal::Type::BaseModel
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

        # @!attribute token_group_id
        #
        #   @return [String, nil]
        optional :token_group_id, String

        # @!attribute token_user_id
        #
        #   @return [String, nil]
        optional :token_user_id, String

        # @!method initialize(page_number: nil, page_size: nil, page_snapshot: nil, token_group_id: nil, token_user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::TokenKeyListParams} for more details.
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        #   @param token_group_id [String]
        #
        #   @param token_user_id [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
