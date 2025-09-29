# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OAuthGrants#retrieve
    class OAuthGrantRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::OAuthGrantRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::OAuthGrantRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::OAuthGrantRetrieveResponse::Data]

      # @see Telnyx::Models::OAuthGrantRetrieveResponse#data
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
        #   @return [Symbol, Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType }

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
        #   @param record_type [Symbol, Telnyx::Models::OAuthGrantRetrieveResponse::Data::RecordType] Record type identifier
        #
        #   @param scopes [Array<String>] List of granted OAuth scopes
        #
        #   @param last_used_at [Time, nil] Timestamp when the grant was last used

        # Record type identifier
        #
        # @see Telnyx::Models::OAuthGrantRetrieveResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          OAUTH_GRANT = :oauth_grant

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
