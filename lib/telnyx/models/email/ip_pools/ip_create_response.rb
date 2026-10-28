# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      module IPPools
        # @see Telnyx::Resources::Email::IPPools::IPs#create
        class IPCreateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Email::IPPools::IPCreateResponse::Data]
          required :data, -> { Telnyx::Models::Email::IPPools::IPCreateResponse::Data }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Email::IPPools::IPCreateResponse::Data]

          # @see Telnyx::Models::Email::IPPools::IPCreateResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time

            # @!attribute dedicated_ip_id
            #
            #   @return [String, nil]
            optional :dedicated_ip_id, String

            # @!attribute pool_id
            #
            #   @return [String, nil]
            optional :pool_id, String

            # @!attribute weight
            #
            #   @return [Integer, nil]
            optional :weight, Integer

            # @!method initialize(created_at: nil, dedicated_ip_id: nil, pool_id: nil, weight: nil)
            #   @param created_at [Time]
            #   @param dedicated_ip_id [String]
            #   @param pool_id [String]
            #   @param weight [Integer]
          end
        end
      end
    end
  end
end
