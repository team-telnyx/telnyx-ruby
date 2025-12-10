# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingURLDomains#list
    class MessagingURLDomainListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingURLDomainListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingURLDomainListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::MessagingURLDomainListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::MessagingURLDomainListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingURLDomainListResponse::Data>]
      #   @param meta [Telnyx::Models::MessagingURLDomainListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute url_domain
        #
        #   @return [String, nil]
        optional :url_domain, String

        # @!attribute use_case
        #
        #   @return [String, nil]
        optional :use_case, String

        # @!method initialize(id: nil, record_type: nil, url_domain: nil, use_case: nil)
        #   @param id [String]
        #   @param record_type [String]
        #   @param url_domain [String]
        #   @param use_case [String]
      end

      # @see Telnyx::Models::MessagingURLDomainListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer]
        required :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer]
        required :total_results, Integer

        # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
