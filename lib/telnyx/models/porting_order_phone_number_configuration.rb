# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrderPhoneNumberConfiguration < Telnyx::Internal::Type::BaseModel
      # @!attribute billing_group_id
      #   identifies the billing group to set on the numbers when ported
      #
      #   @return [String, nil]
      optional :billing_group_id, String

      # @!attribute connection_id
      #   identifies the connection to set on the numbers when ported
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute emergency_address_id
      #   identifies the emergency address to set on the numbers when ported
      #
      #   @return [String, nil]
      optional :emergency_address_id, String

      # @!attribute messaging_profile_id
      #   identifies the messaging profile to set on the numbers when ported
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(billing_group_id: nil, connection_id: nil, emergency_address_id: nil, messaging_profile_id: nil, tags: nil)
      #   @param billing_group_id [String] identifies the billing group to set on the numbers when ported
      #
      #   @param connection_id [String] identifies the connection to set on the numbers when ported
      #
      #   @param emergency_address_id [String] identifies the emergency address to set on the numbers when ported
      #
      #   @param messaging_profile_id [String] identifies the messaging profile to set on the numbers when ported
      #
      #   @param tags [Array<String>]
    end
  end
end
