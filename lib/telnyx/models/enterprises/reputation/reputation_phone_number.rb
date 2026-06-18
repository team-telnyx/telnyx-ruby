# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#list
        class ReputationPhoneNumber < Telnyx::Internal::Type::BaseModel
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
      end

      ReputationPhoneNumber = Reputation::ReputationPhoneNumber
    end
  end
end
