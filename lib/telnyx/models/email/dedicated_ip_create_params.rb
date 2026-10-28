# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#create
      class DedicatedIPCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute idempotency_key
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute ip_version
        #   Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
        #   including `ipv6` or `null`, returns `422`.
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::IPVersion, nil]
        optional :ip_version, enum: -> { Telnyx::Email::DedicatedIPCreateParams::IPVersion }

        # @!attribute region
        #   Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value,
        #   including an empty string or `null`, returns `422`.
        #
        #   @return [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::Region, nil]
        optional :region, enum: -> { Telnyx::Email::DedicatedIPCreateParams::Region }

        # @!method initialize(idempotency_key:, ip_version: nil, region: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::DedicatedIPCreateParams} for more details.
        #
        #   @param idempotency_key [String]
        #
        #   @param ip_version [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::IPVersion] Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
        #
        #   @param region [Symbol, Telnyx::Models::Email::DedicatedIPCreateParams::Region] Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value, incl
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Allocate an IP of this address family. Supported value: `ipv4`. Any other value,
        # including `ipv6` or `null`, returns `422`.
        module IPVersion
          extend Telnyx::Internal::Type::Enum

          IPV4 = :ipv4

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Allocate an IP in this region. Supported value: `ewr-nj1`. Any other value,
        # including an empty string or `null`, returns `422`.
        module Region
          extend Telnyx::Internal::Type::Enum

          EWR_NJ1 = :"ewr-nj1"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
