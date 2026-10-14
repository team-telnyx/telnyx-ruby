# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Usage#retrieve_summary
      class UsageRetrieveSummaryParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute end_date
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute start_date
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute token_group_id
        #
        #   @return [String]
        required :token_group_id, String

        # @!attribute metadata
        #   Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #   value matches the tag's text form exactly (booleans as true/false, integers in
        #   decimal), so metadata[flag]=true matches both boolean true and the string
        #   "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
        #   bounded by the account, the date range and the report timeout.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Telnyx::Internal::Type::HashOf[String]

        # @!method initialize(end_date:, start_date:, token_group_id:, metadata: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryParams} for more details.
        #
        #   @param end_date [Date]
        #
        #   @param start_date [Date]
        #
        #   @param token_group_id [String]
        #
        #   @param metadata [Hash{Symbol=>String}] Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
