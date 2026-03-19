# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#create
    class TrafficPolicyProfileCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute type
      #   The type of the traffic policy profile.
      #
      #   @return [Symbol, Telnyx::Models::TrafficPolicyProfileCreateParams::Type]
      required :type, enum: -> { Telnyx::TrafficPolicyProfileCreateParams::Type }

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
      #   Bandwidth limit in kbps. Must be 512 or 1024.
      #
      #   @return [Integer, Telnyx::Models::TrafficPolicyProfileCreateParams::LimitBwKbps, nil]
      optional :limit_bw_kbps, enum: -> { Telnyx::TrafficPolicyProfileCreateParams::LimitBwKbps }

      # @!attribute services
      #   Array of PCEF service IDs to include in the profile.
      #
      #   @return [Array<String>, nil]
      optional :services, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(type:, domains: nil, ip_ranges: nil, limit_bw_kbps: nil, services: nil, request_options: {})
      #   @param type [Symbol, Telnyx::Models::TrafficPolicyProfileCreateParams::Type] The type of the traffic policy profile.
      #
      #   @param domains [Array<String>] Array of domain names.
      #
      #   @param ip_ranges [Array<String>] Array of IP ranges in CIDR notation.
      #
      #   @param limit_bw_kbps [Integer, Telnyx::Models::TrafficPolicyProfileCreateParams::LimitBwKbps] Bandwidth limit in kbps. Must be 512 or 1024.
      #
      #   @param services [Array<String>] Array of PCEF service IDs to include in the profile.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The type of the traffic policy profile.
      module Type
        extend Telnyx::Internal::Type::Enum

        WHITELIST = :whitelist
        BLACKLIST = :blacklist

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Bandwidth limit in kbps. Must be 512 or 1024.
      module LimitBwKbps
        extend Telnyx::Internal::Type::Enum

        LIMIT_BW_KBPS_512 = 512
        LIMIT_BW_KBPS_1024 = 1024

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end
  end
end
