# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#list
      class DedicatedIPListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_pool_id
        #   Return only IPs in this pool (exact match on `pool_id`). A value that is not a
        #   UUID returns an empty list. An empty value applies no filter.
        #
        #   @return [String, nil]
        optional :filter_pool_id, String

        # @!attribute filter_region
        #   Return only IPs in this region (exact, case-sensitive match on `region`). An
        #   empty value applies no filter.
        #
        #   @return [String, nil]
        optional :filter_region, String

        # @!attribute filter_status
        #   Return only IPs in this lifecycle status (exact match). Any other value returns
        #   an empty list. An empty value applies no filter.
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIPListParams::FilterStatus, nil]
        optional :filter_status, enum: -> { Telnyx::Email::DedicatedIPListParams::FilterStatus }

        # @!method initialize(filter_pool_id: nil, filter_region: nil, filter_status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::DedicatedIPListParams} for more details.
        #
        #   @param filter_pool_id [String] Return only IPs in this pool (exact match on `pool_id`). A value that is not a U
        #
        #   @param filter_region [String] Return only IPs in this region (exact, case-sensitive match on `region`). An emp
        #
        #   @param filter_status [Symbol, Telnyx::Models::Email::DedicatedIPListParams::FilterStatus] Return only IPs in this lifecycle status (exact match). Any other value returns
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Return only IPs in this lifecycle status (exact match). Any other value returns
        # an empty list. An empty value applies no filter.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          PROVISIONING = :provisioning
          WARMING_UP = :warming_up
          ACTIVE = :active
          SUSPENDED = :suspended
          RELEASED = :released

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
