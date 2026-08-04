# frozen_string_literal: true

module Telnyx
  module Models
    module EmailUnsubscribeGroups
      # @see Telnyx::Resources::EmailUnsubscribeGroups::Suppressions#create
      class SuppressionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute to
        #
        #   @return [String]
        required :to, String

        # @!method initialize(id:, to:, request_options: {})
        #   @param id [String]
        #   @param to [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
