# frozen_string_literal: true

module Telnyx
  module Models
    module EmailMessages
      # @see Telnyx::Resources::EmailMessages::Recipients#list
      class RecipientListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute email_id
        #
        #   @return [String]
        required :email_id, String

        # @!attribute kind
        #   Filter recipients by address kind.
        #
        #   @return [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Kind, nil]
        optional :kind, enum: -> { Telnyx::EmailMessages::RecipientListParams::Kind }

        # @!attribute page_cursor
        #   Opaque URL-safe Base64 cursor returned by a previous list response.
        #
        #   @return [String, nil]
        optional :page_cursor, String

        # @!attribute page_size
        #   Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        #   clamped to the valid range.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute status
        #   Filter recipients by status.
        #
        #   @return [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Status, nil]
        optional :status, enum: -> { Telnyx::EmailMessages::RecipientListParams::Status }

        # @!method initialize(email_id:, kind: nil, page_cursor: nil, page_size: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailMessages::RecipientListParams} for more details.
        #
        #   @param email_id [String]
        #
        #   @param kind [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Kind] Filter recipients by address kind.
        #
        #   @param page_cursor [String] Opaque URL-safe Base64 cursor returned by a previous list response.
        #
        #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        #
        #   @param status [Symbol, Telnyx::Models::EmailMessages::RecipientListParams::Status] Filter recipients by status.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter recipients by address kind.
        module Kind
          extend Telnyx::Internal::Type::Enum

          TO = :to
          CC = :cc
          BCC = :bcc

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter recipients by status.
        module Status
          extend Telnyx::Internal::Type::Enum

          QUEUED = :queued
          SENDING = :sending
          SENT = :sent
          DEFERRED = :deferred
          DELIVERED = :delivered
          BOUNCED = :bounced
          FAILED = :failed
          GW_REJECT = :gw_reject
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
