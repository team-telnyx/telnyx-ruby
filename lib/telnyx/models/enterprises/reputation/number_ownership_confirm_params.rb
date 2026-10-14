# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#ownership_confirm
        class NumberOwnershipConfirmParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute still_own
          #   `true` confirms you still own the number. `false` reports that you no longer own
          #   it and removes it from Number Reputation.
          #
          #   @return [Boolean]
          required :still_own, Telnyx::Internal::Type::Boolean

          # @!attribute evidence_document_id
          #   Optional id of an uploaded document supporting the confirmation.
          #
          #   @return [String, nil]
          optional :evidence_document_id, String

          # @!method initialize(enterprise_id:, phone_number:, still_own:, evidence_document_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::NumberOwnershipConfirmParams} for more
          #   details.
          #
          #   @param enterprise_id [String]
          #
          #   @param phone_number [String]
          #
          #   @param still_own [Boolean] `true` confirms you still own the number. `false` reports that you no longer own
          #
          #   @param evidence_document_id [String] Optional id of an uploaded document supporting the confirmation.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
