# frozen_string_literal: true

module Telnyx
  module Models
    module EmailDomains
      # @see Telnyx::Resources::EmailDomains::Webhooks#retrieve
      class WebhookRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute domain_id
        #
        #   @return [String]
        required :domain_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(domain_id:, id:, request_options: {})
        #   @param domain_id [String]
        #   @param id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
