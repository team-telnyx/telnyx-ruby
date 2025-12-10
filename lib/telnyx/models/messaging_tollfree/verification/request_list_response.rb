# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#list
        class RequestListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute records
          #   The records yielded by this request
          #
          #   @return [Array<Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus>]
          required :records,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingTollfree::Verification::VerificationRequestStatus] }

          # @!attribute total_records
          #   The total amount of records for these query parameters
          #
          #   @return [Integer]
          required :total_records, Integer

          # @!method initialize(records:, total_records:)
          #   A paginated response
          #
          #   @param records [Array<Telnyx::Models::MessagingTollfree::Verification::VerificationRequestStatus>] The records yielded by this request
          #
          #   @param total_records [Integer] The total amount of records for these query parameters
        end
      end
    end
  end
end
