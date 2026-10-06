# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Usage#retrieve_summary
      class UsageRetrieveSummaryParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute end_date
        #   Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute start_date
        #   Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute token_group_id
        #   ID of a token group owned by the authenticated account.
        #
        #   @return [String]
        required :token_group_id, String

        # @!method initialize(end_date:, start_date:, token_group_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveSummaryParams} for more details.
        #
        #   @param end_date [Date] Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
        #
        #   @param start_date [Date] Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
        #
        #   @param token_group_id [String] ID of a token group owned by the authenticated account.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
