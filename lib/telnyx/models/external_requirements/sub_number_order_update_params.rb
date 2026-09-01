# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalRequirements
      # @see Telnyx::Resources::ExternalRequirements::SubNumberOrders#update
      class SubNumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute regulatory_requirement_id
        #
        #   @return [String]
        required :regulatory_requirement_id, String

        # @!attribute sub_number_order_id
        #
        #   @return [String]
        required :sub_number_order_id, String

        # @!attribute requirement
        #   The end user's identity details for the action requirement. Australia mobile ID
        #   verification is currently the only action requirement. It requires `first_name`
        #   and `last_name`, the same fields the corresponding GET lists in
        #   `fields_required`.
        #
        #   @return [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams::Requirement]
        required :requirement, -> { Telnyx::ExternalRequirements::SubNumberOrderUpdateParams::Requirement }

        # @!method initialize(regulatory_requirement_id:, sub_number_order_id:, requirement:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams} for more
        #   details.
        #
        #   @param regulatory_requirement_id [String]
        #
        #   @param sub_number_order_id [String]
        #
        #   @param requirement [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateParams::Requirement] The end user's identity details for the action requirement. Australia mobile ID
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Requirement < Telnyx::Internal::Type::BaseModel
          # @!attribute first_name
          #   The end user's first name.
          #
          #   @return [String]
          required :first_name, String

          # @!attribute last_name
          #   The end user's last name.
          #
          #   @return [String]
          required :last_name, String

          # @!method initialize(first_name:, last_name:)
          #   The end user's identity details for the action requirement. Australia mobile ID
          #   verification is currently the only action requirement. It requires `first_name`
          #   and `last_name`, the same fields the corresponding GET lists in
          #   `fields_required`.
          #
          #   @param first_name [String] The end user's first name.
          #
          #   @param last_name [String] The end user's last name.
        end
      end
    end
  end
end
