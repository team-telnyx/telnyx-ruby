# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::ExternalVerification#create
        class ExternalVerificationCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute document_ids
          #   Ids of uploaded documents (Documents API) proving the enterprise owns its phone
          #   numbers hosted with another provider, for example a carrier invoice or account
          #   statement.
          #
          #   @return [Array<String>]
          required :document_ids, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute phone_numbers
          #   Optional. The phone numbers hosted with another provider that the documents
          #   cover, in E.164 format. Shown to the reviewer to match the documents to your
          #   numbers; you can still add numbers that are not listed here, and each is checked
          #   on its own.
          #
          #   @return [Array<String>, nil]
          optional :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(enterprise_id:, document_ids:, phone_numbers: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::ExternalVerificationCreateParams} for
          #   more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param document_ids [Array<String>] Ids of uploaded documents (Documents API) proving the enterprise owns its phone
          #
          #   @param phone_numbers [Array<String>] Optional. The phone numbers hosted with another provider that the documents cove
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
