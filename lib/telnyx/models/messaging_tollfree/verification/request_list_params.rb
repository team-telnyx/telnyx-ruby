# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#list
        class RequestListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute page
          #
          #   @return [Integer]
          required :page, Integer

          # @!attribute page_size
          #   Request this many records per page
          #
          #           This value is automatically clamped if the provided value is too large.
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!attribute date_end
          #
          #   @return [Time, nil]
          optional :date_end, Time

          # @!attribute date_start
          #
          #   @return [Time, nil]
          optional :date_start, Time

          # @!attribute phone_number
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #   Tollfree verification status
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus, nil]
          optional :status, enum: -> { Telnyx::MessagingTollfree::Verification::TfVerificationStatus }

          # @!method initialize(page:, page_size:, date_end: nil, date_start: nil, phone_number: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingTollfree::Verification::RequestListParams} for more
          #   details.
          #
          #   @param page [Integer]
          #
          #   @param page_size [Integer]
          #
          #   @param date_end [Time]
          #
          #   @param date_start [Time]
          #
          #   @param phone_number [String]
          #
          #   @param status [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus] Tollfree verification status
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
