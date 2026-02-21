# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AlphanumericSenderIDs#list
    class AlphanumericSenderIDListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the alphanumeric sender ID resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute alphanumeric_sender_id
      #   The alphanumeric sender ID string.
      #
      #   @return [String, nil]
      optional :alphanumeric_sender_id, String

      # @!attribute messaging_profile_id
      #   The messaging profile this sender ID belongs to.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute organization_id
      #   The organization that owns this sender ID.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::AlphanumericSenderIDListResponse::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::Models::AlphanumericSenderIDListResponse::RecordType }

      # @!attribute us_long_code_fallback
      #   A US long code number to use as fallback when sending to US destinations.
      #
      #   @return [String, nil]
      optional :us_long_code_fallback, String

      # @!method initialize(id: nil, alphanumeric_sender_id: nil, messaging_profile_id: nil, organization_id: nil, record_type: nil, us_long_code_fallback: nil)
      #   @param id [String] Uniquely identifies the alphanumeric sender ID resource.
      #
      #   @param alphanumeric_sender_id [String] The alphanumeric sender ID string.
      #
      #   @param messaging_profile_id [String] The messaging profile this sender ID belongs to.
      #
      #   @param organization_id [String] The organization that owns this sender ID.
      #
      #   @param record_type [Symbol, Telnyx::Models::AlphanumericSenderIDListResponse::RecordType]
      #
      #   @param us_long_code_fallback [String] A US long code number to use as fallback when sending to US destinations.

      # @see Telnyx::Models::AlphanumericSenderIDListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        ALPHANUMERIC_SENDER_ID = :alphanumeric_sender_id

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
