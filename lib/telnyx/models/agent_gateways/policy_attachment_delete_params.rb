# frozen_string_literal: true

module Telnyx
  module Models
    module AgentGateways
      # @see Telnyx::Resources::AgentGateways::PolicyAttachments#delete
      class PolicyAttachmentDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute instance_id
        #
        #   @return [String]
        required :instance_id, String

        # @!attribute attachment_id
        #
        #   @return [String]
        required :attachment_id, String

        # @!method initialize(instance_id:, attachment_id:, request_options: {})
        #   @param instance_id [String]
        #   @param attachment_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
