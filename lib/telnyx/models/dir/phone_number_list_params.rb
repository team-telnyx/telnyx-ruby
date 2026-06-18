# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#list
      class PhoneNumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute page_number
        #   1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute status
        #   Filter by phone-number status.
        #
        #   @return [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus, nil]
        optional :status, enum: -> { Telnyx::Dir::DirPhoneNumberStatus }

        # @!method initialize(dir_id:, page_number: nil, page_size: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberListParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @param status [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus] Filter by phone-number status.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
