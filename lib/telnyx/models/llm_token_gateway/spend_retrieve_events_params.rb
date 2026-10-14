# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Spend#retrieve_events
      class SpendRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute end_date
        #
        #   @return [Date, nil]
        optional :end_date, Date

        # @!attribute end_user_id
        #
        #   @return [String, nil]
        optional :end_user_id, String

        # @!attribute metadata
        #   Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #   value matches the tag's text form exactly (booleans as true/false, integers in
        #   decimal), so metadata[flag]=true matches both boolean true and the string
        #   "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
        #   bounded by the account, the date range and the report timeout.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[String]

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

        # @!attribute start_date
        #
        #   @return [Date, nil]
        optional :start_date, Date

        # @!attribute token_group_id
        #
        #   @return [String, nil]
        optional :token_group_id, String

        # @!attribute token_key_id
        #
        #   @return [String, nil]
        optional :token_key_id, String

        # @!attribute token_user_id
        #
        #   @return [String, nil]
        optional :token_user_id, String

        # @!method initialize(end_date: nil, end_user_id: nil, metadata: nil, page_number: nil, page_size: nil, page_snapshot: nil, start_date: nil, token_group_id: nil, token_key_id: nil, token_user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::SpendRetrieveEventsParams} for more details.
        #
        #   @param end_date [Date]
        #
        #   @param end_user_id [String]
        #
        #   @param metadata [Hash{Symbol=>String}] Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param page_snapshot [String] Required after page 1; account/filter-bound 15-minute stable snapshot; expired/m
        #
        #   @param start_date [Date]
        #
        #   @param token_group_id [String]
        #
        #   @param token_key_id [String]
        #
        #   @param token_user_id [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
