# frozen_string_literal: true

module Telnyx
  module Models
    class DocServiceDocument < Telnyx::Internal::Type::BaseModel
      # @!attribute customer_reference
      #   Optional reference string for customer tracking.
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute filename
      #   The filename of the document.
      #
      #   @return [String, nil]
      optional :filename, String

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute av_scan_status
        #   The antivirus scan status of the document.
        #
        #   @return [Symbol, Telnyx::Models::DocServiceDocument::AvScanStatus, nil]
        optional :av_scan_status, enum: -> { Telnyx::DocServiceDocument::AvScanStatus }

        # @!attribute content_type
        #   The document's content_type.
        #
        #   @return [String, nil]
        optional :content_type, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute sha256
        #   The document's SHA256 hash provided for optional verification purposes.
        #
        #   @return [String, nil]
        optional :sha256, String

        # @!attribute size
        #   Indicates the document's filesize
        #
        #   @return [Telnyx::Models::DocServiceDocument::Size, nil]
        optional :size, -> { Telnyx::DocServiceDocument::Size }

        # @!attribute status
        #   Indicates the current document reviewing status
        #
        #   @return [Symbol, Telnyx::Models::DocServiceDocument::Status, nil]
        optional :status, enum: -> { Telnyx::DocServiceDocument::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, av_scan_status: nil, content_type: nil, created_at: nil, customer_reference: nil, filename: nil, record_type: nil, sha256: nil, size: nil, status: nil, updated_at: nil)
      #   @param id [String] Identifies the resource.
      #
      #   @param av_scan_status [Symbol, Telnyx::Models::DocServiceDocument::AvScanStatus] The antivirus scan status of the document.
      #
      #   @param content_type [String] The document's content_type.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param customer_reference [String] Optional reference string for customer tracking.
      #
      #   @param filename [String] The filename of the document.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param sha256 [String] The document's SHA256 hash provided for optional verification purposes.
      #
      #   @param size [Telnyx::Models::DocServiceDocument::Size] Indicates the document's filesize
      #
      #   @param status [Symbol, Telnyx::Models::DocServiceDocument::Status] Indicates the current document reviewing status
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

      # The antivirus scan status of the document.
      #
      # @see Telnyx::Models::DocServiceDocument#av_scan_status
      module AvScanStatus
        extend Telnyx::Internal::Type::Enum

        SCANNED = :scanned
        INFECTED = :infected
        PENDING_SCAN = :pending_scan
        NOT_SCANNED = :not_scanned

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::DocServiceDocument#size
      class Size < Telnyx::Internal::Type::BaseModel
        response_only do
          # @!attribute amount
          #   The number of bytes
          #
          #   @return [Integer, nil]
          optional :amount, Integer

          # @!attribute unit
          #   Identifies the unit
          #
          #   @return [String, nil]
          optional :unit, String
        end

        # @!method initialize(amount: nil, unit: nil)
        #   Indicates the document's filesize
        #
        #   @param amount [Integer] The number of bytes
        #
        #   @param unit [String] Identifies the unit
      end

      # Indicates the current document reviewing status
      #
      # @see Telnyx::Models::DocServiceDocument#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        VERIFIED = :verified
        DENIED = :denied

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
