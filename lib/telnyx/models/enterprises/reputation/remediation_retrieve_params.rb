# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#retrieve
        class RemediationRetrieveParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute remediation_id
          #
          #   @return [String]
          required :remediation_id, String

          # @!method initialize(enterprise_id:, remediation_id:, request_options: {})
          #   @param enterprise_id [String]
          #   @param remediation_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
