# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#associate
        class NumberAssociateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data] }

          # @!attribute meta
          #   JSON:API pagination metadata returned with every paginated list response. Page
          #   numbering is 1-based. `page_size` reports the number of items actually returned
          #   in `data` for this page; the requested size is taken from the `page[size]` query
          #   parameter.
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta]
          required :meta, -> { Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta }

          # @!method initialize(data:, meta:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse} for more
          #   details.
          #
          #   @param data [Array<Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data>]
          #
          #   @param meta [Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta] JSON:API pagination metadata returned with every paginated list response. Page n

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute enterprise_id
            #
            #   @return [String, nil]
            optional :enterprise_id, String

            # @!attribute phone_number
            #   E.164 with leading `+`.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute reputation_data
            #   `null` until the first refresh has been collected for this number.
            #
            #   @return [Telnyx::Models::ReputationData, nil]
            optional :reputation_data, -> { Telnyx::ReputationData }, nil?: true

            response_only do
              # @!attribute id
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute created_at
              #
              #   @return [Time, nil]
              optional :created_at, Time

              # @!attribute updated_at
              #
              #   @return [Time, nil]
              optional :updated_at, Time
            end

            # @!method initialize(id: nil, created_at: nil, enterprise_id: nil, phone_number: nil, reputation_data: nil, updated_at: nil)
            #   @param id [String]
            #
            #   @param created_at [Time]
            #
            #   @param enterprise_id [String]
            #
            #   @param phone_number [String] E.164 with leading `+`.
            #
            #   @param reputation_data [Telnyx::Models::ReputationData, nil] `null` until the first refresh has been collected for this number.
            #
            #   @param updated_at [Time]
          end

          # @see Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute page_number
            #   1-based index of this page. Echoes the `page[number]` query parameter (default
            #   `1`).
            #
            #   @return [Integer]
            required :page_number, Integer

            # @!attribute page_size
            #   Number of items returned in this page's `data` array. Capped at 250.
            #
            #   @return [Integer]
            required :page_size, Integer

            # @!attribute total_pages
            #   Total number of pages available given the current `page_size`.
            #
            #   @return [Integer]
            required :total_pages, Integer

            # @!attribute total_results
            #   Total number of items across all pages (excludes soft-deleted rows).
            #
            #   @return [Integer]
            required :total_results, Integer

            # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta} for
            #   more details.
            #
            #   JSON:API pagination metadata returned with every paginated list response. Page
            #   numbering is 1-based. `page_size` reports the number of items actually returned
            #   in `data` for this page; the requested size is taken from the `page[size]` query
            #   parameter.
            #
            #   @param page_number [Integer] 1-based index of this page. Echoes the `page[number]` query parameter (default `
            #
            #   @param page_size [Integer] Number of items returned in this page's `data` array. Capped at 250.
            #
            #   @param total_pages [Integer] Total number of pages available given the current `page_size`.
            #
            #   @param total_results [Integer] Total number of items across all pages (excludes soft-deleted rows).
          end
        end
      end
    end
  end
end
