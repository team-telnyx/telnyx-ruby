# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      module IPPools
        # @see Telnyx::Resources::Email::IPPools::IPs#create
        class IPCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute dedicated_ip_id
          #   The dedicated IP to add. It must belong to the account, must not be released,
          #   and must not already be in a pool.
          #
          #   @return [String]
          required :dedicated_ip_id, String

          # @!attribute weight
          #   Relative routing weight for this IP in the pool. Positive integer; defaults
          #   to 100.
          #
          #   @return [Integer, nil]
          optional :weight, Integer

          # @!method initialize(id:, dedicated_ip_id:, weight: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::IPPools::IPCreateParams} for more details.
          #
          #   @param id [String]
          #
          #   @param dedicated_ip_id [String] The dedicated IP to add. It must belong to the account, must not be released, an
          #
          #   @param weight [Integer] Relative routing weight for this IP in the pool. Positive integer; defaults to 1
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
