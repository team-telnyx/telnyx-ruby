# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::References#create
      class ReferenceCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute business_references
        #   Exactly two business references.
        #
        #   @return [Array<Telnyx::Models::Dir::ReferenceInput>]
        required :business_references, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Dir::ReferenceInput] }

        # @!attribute financial_reference
        #   One reference supplied at submit. The reference type is implied by the field
        #   that carries it (business_references vs financial_reference).
        #
        #   @return [Telnyx::Models::Dir::ReferenceInput]
        required :financial_reference, -> { Telnyx::Dir::ReferenceInput }

        # @!method initialize(dir_id:, business_references:, financial_reference:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::ReferenceCreateParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param business_references [Array<Telnyx::Models::Dir::ReferenceInput>] Exactly two business references.
        #
        #   @param financial_reference [Telnyx::Models::Dir::ReferenceInput] One reference supplied at submit. The reference type is implied by the field tha
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
