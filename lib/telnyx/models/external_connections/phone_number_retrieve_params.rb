# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::PhoneNumbers#retrieve
      class PhoneNumberRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute phone_number_id
        #
        #   @return [String]
        required :phone_number_id, String

        # @!method initialize(id:, phone_number_id:, request_options: {})
        #   @param id [String]
        #   @param phone_number_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
