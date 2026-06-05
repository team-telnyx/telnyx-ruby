# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # @see Telnyx::Resources::TermsOfService::Agreements#retrieve
      class AgreementRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute agreement_id
        #
        #   @return [String]
        required :agreement_id, String

        # @!method initialize(agreement_id:, request_options: {})
        #   @param agreement_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
