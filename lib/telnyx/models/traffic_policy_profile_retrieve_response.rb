# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#retrieve
    class TrafficPolicyProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data]

      # @see Telnyx::Models::TrafficPolicyProfileRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
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
        #   Bandwidth limit in kbps.
        #
        #   @return [Integer, nil]
        optional :limit_bw_kbps, Integer, nil?: true

        # @!attribute services
        #   Array of PCEF service IDs included in the profile.
        #
        #   @return [Array<String>, nil]
        optional :services, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   The type of the traffic policy profile.
        #
        #   @return [Symbol, Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data::Type, nil]
        optional :type, enum: -> { Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data::Type }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, domains: nil, ip_ranges: nil, limit_bw_kbps: nil, record_type: nil, services: nil, type: nil, updated_at: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param domains [Array<String>] Array of domain names.
        #
        #   @param ip_ranges [Array<String>] Array of IP ranges in CIDR notation.
        #
        #   @param limit_bw_kbps [Integer, nil] Bandwidth limit in kbps.
        #
        #   @param record_type [String]
        #
        #   @param services [Array<String>] Array of PCEF service IDs included in the profile.
        #
        #   @param type [Symbol, Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data::Type] The type of the traffic policy profile.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # The type of the traffic policy profile.
        #
        # @see Telnyx::Models::TrafficPolicyProfileRetrieveResponse::Data#type
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
end
