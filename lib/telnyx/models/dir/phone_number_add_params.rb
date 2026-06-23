# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#add
      class PhoneNumberAddParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute documents
        #   Supporting documents covering this batch. At least one entry with
        #   `document_type: letter_of_authorization` is required - the LOA authorises Telnyx
        #   to register these numbers under the DIR. Each `document_id` must come from the
        #   Telnyx Documents API. Additional document types (e.g. business registration) may
        #   be included alongside the LOA.
        #
        #   @return [Array<Telnyx::Models::Document>]
        required :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }

        # @!attribute phone_numbers
        #   1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
        #   `1`.
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(dir_id:, documents:, phone_numbers:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberAddParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param documents [Array<Telnyx::Models::Document>] Supporting documents covering this batch. At least one entry with `document_type
        #
        #   @param phone_numbers [Array<String>] 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with `
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
