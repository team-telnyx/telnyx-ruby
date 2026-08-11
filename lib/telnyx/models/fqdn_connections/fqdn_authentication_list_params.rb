# frozen_string_literal: true

module Telnyx
  module Models
    module FqdnConnections
      # @see Telnyx::Resources::FqdnConnections::FqdnAuthentication#list
      class FqdnAuthenticationListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute fqdn_connection_id
        #
        #   @return [String]
        required :fqdn_connection_id, String

        # @!method initialize(fqdn_connection_id:, request_options: {})
        #   @param fqdn_connection_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
