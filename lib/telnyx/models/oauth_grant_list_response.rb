# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#list
    class OAuthGrantListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OAuthGrantListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OAuthGrantListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::OAuthGrantListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::OAuthGrantListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OAuthGrantListResponse::Data>]
      #   @param meta [Telnyx::Models::OAuthGrantListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the OAuth grant
        #
        #   @return [String]
        required :id, String

        # @!attribute client_id
        #   OAuth client identifier
        #
        #   @return [String]
        required :client_id, String

        # @!attribute created_at
        #   Timestamp when the grant was created
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute record_type
        #   Record type identifier
        #
        #   @return [Symbol, Telnyx::Models::OAuthGrantListResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::OAuthGrantListResponse::Data::RecordType }

        # @!attribute scopes
        #   List of granted OAuth scopes
        #
        #   @return [Array<String>]
        required :scopes, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute last_used_at
        #   Timestamp when the grant was last used
        #
        #   @return [Time, nil]
        optional :last_used_at, Time, nil?: true

        # @!method initialize(id:, client_id:, created_at:, record_type:, scopes:, last_used_at: nil)
        #   @param id [String] Unique identifier for the OAuth grant
        #
        #   @param client_id [String] OAuth client identifier
        #
        #   @param created_at [Time] Timestamp when the grant was created
        #
        #   @param record_type [Symbol, Telnyx::Models::OAuthGrantListResponse::Data::RecordType] Record type identifier
        #
        #   @param scopes [Array<String>] List of granted OAuth scopes
        #
        #   @param last_used_at [Time, nil] Timestamp when the grant was last used

        # Record type identifier
        #
        # @see Telnyx::Models::OAuthGrantListResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          OAUTH_GRANT = :oauth_grant

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::OAuthGrantListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #   Current page number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page
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
        #   @param page_size [Integer] Number of items per page
        #
        #   @param total_pages [Integer] Total number of pages
        #
        #   @param total_results [Integer] Total number of results
      end
    end
  end
end
