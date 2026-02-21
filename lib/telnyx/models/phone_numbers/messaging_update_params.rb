# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Messaging#update
      class MessagingUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute messaging_product
        #   Configure the messaging product for this number:
        #
        #   - Omit this field or set its value to `null` to keep the current value.
        #   - Set this field to a quoted product ID to set this phone number to that product
        #
        #   @return [String, nil]
        optional :messaging_product, String

        # @!attribute messaging_profile_id
        #   Configure the messaging profile this phone number is assigned to:
        #
        #   - Omit this field or set its value to `null` to keep the current value.
        #   - Set this field to `""` to unassign the number from its messaging profile
        #   - Set this field to a quoted UUID of a messaging profile to assign this number
        #     to that messaging profile
        #
        #   @return [String, nil]
        optional :messaging_profile_id, String

        # @!attribute tags
        #   Tags to set on this phone number.
        #
        #   @return [Array<String>, nil]
        optional :tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(messaging_product: nil, messaging_profile_id: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::MessagingUpdateParams} for more details.
        #
        #   @param messaging_product [String] Configure the messaging product for this number:
        #
        #   @param messaging_profile_id [String] Configure the messaging profile this phone number is assigned to:
        #
        #   @param tags [Array<String>] Tags to set on this phone number.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
