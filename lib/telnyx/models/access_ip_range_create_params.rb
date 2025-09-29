# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPRanges#create
    class AccessIPRangeCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute cidr_block
      #
      #   @return [String]
      required :cidr_block, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(cidr_block:, description: nil, request_options: {})
      #   @param cidr_block [String]
      #   @param description [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
