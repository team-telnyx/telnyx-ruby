# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#associate
        class NumberAssociateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data>, nil]
          optional :data,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta, nil]
          optional :meta, -> { Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data>]
          #   @param meta [Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta]

          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #   Unique identifier
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute created_at
            #   When the number was associated
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute enterprise_id
            #   ID of the associated enterprise
            #
            #   @return [String, nil]
            optional :enterprise_id, String

            # @!attribute phone_number
            #   Phone number in E.164 format
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute updated_at
            #   When the record was last updated
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(id: nil, created_at: nil, enterprise_id: nil, phone_number: nil, updated_at: nil)
            #   @param id [String] Unique identifier
            #
            #   @param created_at [Time] When the number was associated
            #
            #   @param enterprise_id [String] ID of the associated enterprise
            #
            #   @param phone_number [String] Phone number in E.164 format
            #
            #   @param updated_at [Time] When the record was last updated
          end

          # @see Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute page_number
            #   Current page number
            #
            #   @return [Integer, nil]
            optional :page_number, Integer

            # @!attribute page_size
            #   Items per page
            #
            #   @return [Integer, nil]
            optional :page_size, Integer

            # @!attribute total_pages
            #   Total number of pages
            #
            #   @return [Integer, nil]
            optional :total_pages, Integer

            # @!attribute total_results
            #   Total number of results
            #
            #   @return [Integer, nil]
            optional :total_results, Integer

            # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
            #   @param page_number [Integer] Current page number
            #
            #   @param page_size [Integer] Items per page
            #
            #   @param total_pages [Integer] Total number of pages
            #
            #   @param total_results [Integer] Total number of results
          end
        end
      end
    end
  end
end
