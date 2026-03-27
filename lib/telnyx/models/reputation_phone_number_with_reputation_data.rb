# frozen_string_literal: true

module Telnyx
  module Models
    class ReputationPhoneNumberWithReputationData < Telnyx::Internal::Type::BaseModel
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

      # @!attribute reputation_data
      #   Reputation metrics
      #
      #   @return [Telnyx::Models::ReputationData, nil]
      optional :reputation_data, -> { Telnyx::ReputationData }

      # @!attribute updated_at
      #   When the record was last updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, created_at: nil, enterprise_id: nil, phone_number: nil, reputation_data: nil, updated_at: nil)
      #   @param id [String] Unique identifier
      #
      #   @param created_at [Time] When the number was associated
      #
      #   @param enterprise_id [String] ID of the associated enterprise
      #
      #   @param phone_number [String] Phone number in E.164 format
      #
      #   @param reputation_data [Telnyx::Models::ReputationData] Reputation metrics
      #
      #   @param updated_at [Time] When the record was last updated
    end
  end
end
