# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Spend#retrieve_summary
      class SpendRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data>]
        required :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta]
        required :meta, -> { Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data>]
        #   @param meta [Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute dimension_id
          #
          #   @return [String, nil]
          required :dimension_id, String, nil?: true

          # @!attribute input_tokens
          #
          #   @return [Integer]
          required :input_tokens, Integer

          # @!attribute name
          #
          #   @return [String, nil]
          required :name, String, nil?: true

          # @!attribute output_tokens
          #
          #   @return [Integer]
          required :output_tokens, Integer

          # @!attribute requests
          #
          #   @return [Integer]
          required :requests, Integer

          # @!attribute reserved_spend
          #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          #   never binary float accounting.
          #
          #   @return [Float]
          required :reserved_spend, Float

          # @!attribute spend
          #   USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          #   never binary float accounting.
          #
          #   @return [Float]
          required :spend, Float

          # @!attribute unknown_requests
          #
          #   @return [Integer]
          required :unknown_requests, Integer

          # @!attribute end_user_id
          #
          #   @return [String, nil]
          optional :end_user_id, String, nil?: true

          # @!attribute metadata_key
          #   Present only for group_by=metadata:<key>: the tag key. dimension_id is then the
          #   tag value in text form (booleans as true/false, integers in decimal), or null
          #   for requests without the key; name is null.
          #
          #   @return [String, nil]
          optional :metadata_key, String

          # @!attribute token_group_id
          #
          #   @return [String, nil]
          optional :token_group_id, String, nil?: true

          # @!attribute token_key_id
          #
          #   @return [String, nil]
          optional :token_key_id, String, nil?: true

          # @!attribute token_user_id
          #
          #   @return [String, nil]
          optional :token_user_id, String, nil?: true

          # @!method initialize(dimension_id:, input_tokens:, name:, output_tokens:, requests:, reserved_spend:, spend:, unknown_requests:, end_user_id: nil, metadata_key: nil, token_group_id: nil, token_key_id: nil, token_user_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data} for more
          #   details.
          #
          #   @param dimension_id [String, nil]
          #
          #   @param input_tokens [Integer]
          #
          #   @param name [String, nil]
          #
          #   @param output_tokens [Integer]
          #
          #   @param requests [Integer]
          #
          #   @param reserved_spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
          #
          #   @param spend [Float] USD, decimal precision at most 6 places; parse exactly to integer micro-USD, nev
          #
          #   @param unknown_requests [Integer]
          #
          #   @param end_user_id [String, nil]
          #
          #   @param metadata_key [String] Present only for group_by=metadata:<key>: the tag key. dimension_id is then the
          #
          #   @param token_group_id [String, nil]
          #
          #   @param token_key_id [String, nil]
          #
          #   @param token_user_id [String, nil]
        end

        # @see Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute end_date
          #
          #   @return [Date]
          required :end_date, Date

          # @!attribute group_by
          #   Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
          #   (any case) are rejected.
          #
          #   @return [Symbol, String, Telnyx::Models::LlmTokenGateway::SpendGroupBy]
          required :group_by, union: -> { Telnyx::LlmTokenGateway::SpendGroupBy }

          # @!attribute has_more
          #
          #   @return [Boolean]
          required :has_more, Telnyx::Internal::Type::Boolean

          # @!attribute page_number
          #
          #   @return [Integer]
          required :page_number, Integer

          # @!attribute page_size
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!attribute snapshot
          #
          #   @return [String]
          required :snapshot, String

          # @!attribute start_date
          #
          #   @return [Date]
          required :start_date, Date

          # @!method initialize(end_date:, group_by:, has_more:, page_number:, page_size:, snapshot:, start_date:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta} for more
          #   details.
          #
          #   @param end_date [Date]
          #
          #   @param group_by [Symbol, String, Telnyx::Models::LlmTokenGateway::SpendGroupBy] Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
          #
          #   @param has_more [Boolean]
          #
          #   @param page_number [Integer]
          #
          #   @param page_size [Integer]
          #
          #   @param snapshot [String]
          #
          #   @param start_date [Date]
        end
      end
    end
  end
end
