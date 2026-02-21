# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumbers#list
    class MessagingHostedNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_messaging_profile_id
      #   Filter by messaging profile ID.
      #
      #   @return [String, nil]
      optional :filter_messaging_profile_id, String

      # @!attribute filter_phone_number
      #   Filter by exact phone number.
      #
      #   @return [String, nil]
      optional :filter_phone_number, String

      # @!attribute filter_phone_number_contains
      #   Filter by phone number substring.
      #
      #   @return [String, nil]
      optional :filter_phone_number_contains, String

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort_phone_number
      #   Sort by phone number.
      #
      #   @return [Symbol, Telnyx::Models::MessagingHostedNumberListParams::SortPhoneNumber, nil]
      optional :sort_phone_number, enum: -> { Telnyx::MessagingHostedNumberListParams::SortPhoneNumber }

      # @!method initialize(filter_messaging_profile_id: nil, filter_phone_number: nil, filter_phone_number_contains: nil, page_number: nil, page_size: nil, sort_phone_number: nil, request_options: {})
      #   @param filter_messaging_profile_id [String] Filter by messaging profile ID.
      #
      #   @param filter_phone_number [String] Filter by exact phone number.
      #
      #   @param filter_phone_number_contains [String] Filter by phone number substring.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort_phone_number [Symbol, Telnyx::Models::MessagingHostedNumberListParams::SortPhoneNumber] Sort by phone number.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Sort by phone number.
      module SortPhoneNumber
        extend Telnyx::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
