# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#enable
      class ReputationEnableParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!attribute loa_document_id
        #   Id of the signed Letter of Authorization document, returned by the Telnyx
        #   Documents API after upload (upload via `POST /v2/documents`; see
        #   https://developers.telnyx.com/api/documents).
        #
        #   @return [String]
        required :loa_document_id, String

        # @!attribute check_frequency
        #   How often Telnyx refreshes the stored reputation data for this enterprise's
        #   registered numbers.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::ReputationCheckFrequency, nil]
        optional :check_frequency, enum: -> { Telnyx::Enterprises::ReputationCheckFrequency }

        # @!method initialize(enterprise_id:, loa_document_id:, check_frequency: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::ReputationEnableParams} for more details.
        #
        #   @param enterprise_id [String]
        #
        #   @param loa_document_id [String] Id of the signed Letter of Authorization document, returned by the Telnyx Docume
        #
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationCheckFrequency] How often Telnyx refreshes the stored reputation data for this enterprise's regi
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
