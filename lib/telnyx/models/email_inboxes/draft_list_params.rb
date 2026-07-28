# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Drafts#list
      class DraftListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String

        # @!attribute filter_status
        #   Restrict results to drafts in this state.
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::DraftListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::EmailInboxes::DraftListParams::FilterStatus }

        # @!attribute page_after
        #   Opaque cursor returned by the previous page.
        #
        #   @return [String, nil]
        optional :page_after, String

        # @!attribute page_size
        #   Number of results to return. Defaults to 25; maximum is 100.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(inbox_id:, filter_status: nil, page_after: nil, page_size: nil, request_options: {})
        #   @param inbox_id [String]
        #
        #   @param filter_status [Symbol, Telnyx::Models::EmailInboxes::DraftListParams::FilterStatus] Restrict results to drafts in this state.
        #
        #   @param page_after [String] Opaque cursor returned by the previous page.
        #
        #   @param page_size [Integer] Number of results to return. Defaults to 25; maximum is 100.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Restrict results to drafts in this state.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          DRAFT = :draft
          SENDING = :sending
          SENT = :sent

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
