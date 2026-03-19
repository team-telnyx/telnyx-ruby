# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#update
    class TrafficPolicyProfileUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute domains
      #   Array of domain names.
      #
      #   @return [Array<String>, nil]
      optional :domains, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute ip_ranges
      #   Array of IP ranges in CIDR notation.
      #
      #   @return [Array<String>, nil]
      optional :ip_ranges, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute limit_bw_kbps
      #   Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      #
      #   @return [Integer, Telnyx::Models::TrafficPolicyProfileUpdateParams::LimitBwKbps, nil]
      optional :limit_bw_kbps, enum: -> { Telnyx::TrafficPolicyProfileUpdateParams::LimitBwKbps }, nil?: true

      # @!attribute services
      #   Array of PCEF service IDs to include in the profile.
      #
      #   @return [Array<String>, nil]
      optional :services, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute type
      #   The type of the traffic policy profile.
      #
      #   @return [Symbol, Telnyx::Models::TrafficPolicyProfileUpdateParams::Type, nil]
      optional :type, enum: -> { Telnyx::TrafficPolicyProfileUpdateParams::Type }

      # @!method initialize(id:, domains: nil, ip_ranges: nil, limit_bw_kbps: nil, services: nil, type: nil, request_options: {})
      #   @param id [String]
      #
      #   @param domains [Array<String>] Array of domain names.
      #
      #   @param ip_ranges [Array<String>] Array of IP ranges in CIDR notation.
      #
      #   @param limit_bw_kbps [Integer, Telnyx::Models::TrafficPolicyProfileUpdateParams::LimitBwKbps, nil] Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      #
      #   @param services [Array<String>] Array of PCEF service IDs to include in the profile.
      #
      #   @param type [Symbol, Telnyx::Models::TrafficPolicyProfileUpdateParams::Type] The type of the traffic policy profile.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Bandwidth limit in kbps. Must be 512 or 1024, or null to remove.
      module LimitBwKbps
        extend Telnyx::Internal::Type::Enum

        LIMIT_BW_KBPS_512 = 512
        LIMIT_BW_KBPS_1024 = 1024

        # @!method self.values
        #   @return [Array<Integer>]
      end

      # The type of the traffic policy profile.
      module Type
        extend Telnyx::Internal::Type::Enum

        WHITELIST = :whitelist
        BLACKLIST = :blacklist
        THROTTLING = :throttling

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
