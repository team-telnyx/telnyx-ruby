# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BillingGroups#update
    class BillingGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute name
      #   A name for the billing group
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param name [String] A name for the billing group
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
