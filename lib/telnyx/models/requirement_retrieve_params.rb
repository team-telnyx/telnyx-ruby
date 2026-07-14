# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Requirements#retrieve
    class RequirementRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute version
      #   Filter by requirement version number. When omitted, returns the currently-active
      #   version.
      #
      #   @return [Integer, nil]
      optional :version, Integer

      # @!method initialize(id:, version: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RequirementRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param version [Integer] Filter by requirement version number. When omitted, returns the currently-active
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
