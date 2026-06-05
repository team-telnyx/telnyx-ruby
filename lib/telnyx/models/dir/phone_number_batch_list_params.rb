# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumberBatches#list
      class PhoneNumberBatchListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute filter_status
        #   Restrict to batches whose aggregate status equals this value.
        #
        #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberBatchListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::Dir::PhoneNumberBatchListParams::FilterStatus }

        # @!attribute page_number
        #   1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(dir_id:, filter_status: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberBatchListParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param filter_status [Symbol, Telnyx::Models::Dir::PhoneNumberBatchListParams::FilterStatus] Restrict to batches whose aggregate status equals this value.
        #
        #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Restrict to batches whose aggregate status equals this value.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          SUBMITTED = :submitted
          IN_REVIEW = :in_review
          VERIFIED = :verified
          UNSUCCESSFUL = :unsuccessful
          SUSPENDED = :suspended
          EXPIRED = :expired
          PERMANENTLY_REJECTED = :permanently_rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
