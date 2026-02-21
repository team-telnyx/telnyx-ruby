# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Messaging#list
      class MessagingListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_messaging_profile_id
        #   Filter by messaging profile ID.
        #
        #   @return [String, nil]
        optional :filter_messaging_profile_id, String

        # @!attribute filter_phone_number
        #   Filter by exact phone number (supports comma-separated list).
        #
        #   @return [String, nil]
        optional :filter_phone_number, String

        # @!attribute filter_phone_number_contains
        #   Filter by phone number substring.
        #
        #   @return [String, nil]
        optional :filter_phone_number_contains, String

        # @!attribute filter_type
        #   Filter by phone number type.
        #
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::FilterType, nil]
        optional :filter_type, enum: -> { Telnyx::PhoneNumbers::MessagingListParams::FilterType }

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
        #   @return [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::SortPhoneNumber, nil]
        optional :sort_phone_number, enum: -> { Telnyx::PhoneNumbers::MessagingListParams::SortPhoneNumber }

        # @!method initialize(filter_messaging_profile_id: nil, filter_phone_number: nil, filter_phone_number_contains: nil, filter_type: nil, page_number: nil, page_size: nil, sort_phone_number: nil, request_options: {})
        #   @param filter_messaging_profile_id [String] Filter by messaging profile ID.
        #
        #   @param filter_phone_number [String] Filter by exact phone number (supports comma-separated list).
        #
        #   @param filter_phone_number_contains [String] Filter by phone number substring.
        #
        #   @param filter_type [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::FilterType] Filter by phone number type.
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param sort_phone_number [Symbol, Telnyx::Models::PhoneNumbers::MessagingListParams::SortPhoneNumber] Sort by phone number.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter by phone number type.
        module FilterType
          extend Telnyx::Internal::Type::Enum

          TOLLFREE = :tollfree
          LONGCODE = :longcode
          SHORTCODE = :shortcode

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
end
