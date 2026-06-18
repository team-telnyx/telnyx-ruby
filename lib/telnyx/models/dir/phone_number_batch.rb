# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumberBatches#list
      class PhoneNumberBatch < Telnyx::Internal::Type::BaseModel
        # @!attribute dir_id
        #
        #   @return [String, nil]
        optional :dir_id, String

        # @!attribute documents
        #   Documents attached to this batch (e.g. a Letter of Authorization). Empty when
        #   none were supplied at add time.
        #
        #   @return [Array<Telnyx::Models::Document>, nil]
        optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }

        # @!attribute enterprise_id
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute phone_numbers
        #   All phone numbers in this batch, with per-number status.
        #
        #   @return [Array<Telnyx::Models::Dir::DirPhoneNumber>, nil]
        optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Dir::DirPhoneNumber] }

        # @!attribute status
        #   Aggregate batch status. Mirrors the values used on individual phone numbers
        #   (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
        #   etc.).
        #
        #   @return [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus, nil]
        optional :status, enum: -> { Telnyx::Dir::DirPhoneNumberStatus }

        response_only do
          # @!attribute batch_id
          #
          #   @return [String, nil]
          optional :batch_id, String

          # @!attribute dir_display_name
          #   The DIR's display name at the time the batch was read.
          #
          #   @return [String, nil]
          optional :dir_display_name, String

          # @!attribute submitted_at
          #   When the batch was created (and implicitly submitted for vetting).
          #
          #   @return [Time, nil]
          optional :submitted_at, Time

          # @!attribute total_count
          #   Number of phone numbers in this batch (length of `phone_numbers`).
          #
          #   @return [Integer, nil]
          optional :total_count, Integer
        end

        # @!method initialize(batch_id: nil, dir_display_name: nil, dir_id: nil, documents: nil, enterprise_id: nil, phone_numbers: nil, status: nil, submitted_at: nil, total_count: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberBatch} for more details.
        #
        #   A phone-number batch groups all numbers added in a single bulk-add request.
        #   Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
        #   array so you can read per-number status without a separate call, plus a
        #   batch-level `status` summarising the unit's progress.
        #
        #   @param batch_id [String]
        #
        #   @param dir_display_name [String] The DIR's display name at the time the batch was read.
        #
        #   @param dir_id [String]
        #
        #   @param documents [Array<Telnyx::Models::Document>] Documents attached to this batch (e.g. a Letter of Authorization). Empty when no
        #
        #   @param enterprise_id [String]
        #
        #   @param phone_numbers [Array<Telnyx::Models::Dir::DirPhoneNumber>] All phone numbers in this batch, with per-number status.
        #
        #   @param status [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus] Aggregate batch status. Mirrors the values used on individual phone numbers (`su
        #
        #   @param submitted_at [Time] When the batch was created (and implicitly submitted for vetting).
        #
        #   @param total_count [Integer] Number of phone numbers in this batch (length of `phone_numbers`).
      end
    end
  end
end
