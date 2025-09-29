# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::PhoneNumbers#update
      class PhoneNumberUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute location_id
        #   Identifies the location to assign the phone number to.
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!method initialize(id:, location_id: nil, request_options: {})
        #   @param id [String]
        #
        #   @param location_id [String] Identifies the location to assign the phone number to.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
