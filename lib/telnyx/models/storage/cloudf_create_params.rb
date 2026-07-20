# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#create
      class CloudfCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute name
        #   Filesystem name, unique within your organization. Names are trimmed and
        #   lowercased; after normalization they may contain lowercase letters, numbers,
        #   `.`, `_`, and `-` only.
        #
        #   @return [String]
        required :name, String

        # @!attribute region
        #   Region where the filesystem's storage and metadata are provisioned.
        #
        #   @return [Symbol, Telnyx::Models::Storage::CloudfCreateParams::Region]
        required :region, enum: -> { Telnyx::Storage::CloudfCreateParams::Region }

        # @!attribute idempotency_key
        #
        #   @return [String]
        required :idempotency_key, String

        # @!method initialize(name:, region:, idempotency_key:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfCreateParams} for more details.
        #
        #   @param name [String] Filesystem name, unique within your organization. Names are trimmed and lowercas
        #
        #   @param region [Symbol, Telnyx::Models::Storage::CloudfCreateParams::Region] Region where the filesystem's storage and metadata are provisioned.
        #
        #   @param idempotency_key [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Region where the filesystem's storage and metadata are provisioned.
        module Region
          extend Telnyx::Internal::Type::Enum

          US_CENTRAL_1 = :"us-central-1"
          US_EAST_1 = :"us-east-1"
          US_WEST_1 = :"us-west-1"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
