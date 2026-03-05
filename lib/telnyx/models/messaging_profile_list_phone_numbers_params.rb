# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#list_phone_numbers
    class MessagingProfileListPhoneNumbersParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messaging_profile_id
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(messaging_profile_id:, page_number: nil, page_size: nil, request_options: {})
      #   @param messaging_profile_id [String]
      #   @param page_number [Integer]
      #   @param page_size [Integer]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
