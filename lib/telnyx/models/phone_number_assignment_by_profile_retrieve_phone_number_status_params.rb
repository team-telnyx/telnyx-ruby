# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumberAssignmentByProfile#retrieve_phone_number_status
    class PhoneNumberAssignmentByProfileRetrievePhoneNumberStatusParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute records_per_page
      #
      #   @return [Integer, nil]
      optional :records_per_page, Integer

      # @!method initialize(page: nil, records_per_page: nil, request_options: {})
      #   @param page [Integer]
      #   @param records_per_page [Integer]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
