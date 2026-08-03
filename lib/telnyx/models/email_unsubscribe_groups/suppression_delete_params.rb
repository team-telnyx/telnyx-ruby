# frozen_string_literal: true

module Telnyx
  module Models
    module EmailUnsubscribeGroups
      # @see Telnyx::Resources::EmailUnsubscribeGroups::Suppressions#delete
      class SuppressionDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!method initialize(id:, email:, request_options: {})
        #   @param id [String]
        #   @param email [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
