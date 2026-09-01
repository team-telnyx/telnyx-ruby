# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalRequirements
      # @see Telnyx::Resources::ExternalRequirements::SubNumberOrders#update
      class SubNumberOrderUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data]

        # @see Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute regulatory_requirement_id
          #
          #   @return [String, nil]
          optional :regulatory_requirement_id, String

          # @!attribute requirement_action
          #
          #   @return [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction, nil]
          optional :requirement_action,
                   -> { Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction }

          # @!attribute sub_order_id
          #
          #   @return [String, nil]
          optional :sub_order_id, String

          # @!method initialize(regulatory_requirement_id: nil, requirement_action: nil, sub_order_id: nil)
          #   @param regulatory_requirement_id [String]
          #   @param requirement_action [Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction]
          #   @param sub_order_id [String]

          # @see Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data#requirement_action
          class RequirementAction < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute value
            #   For Australia mobile ID verification, the unique Onfido verification link to
            #   share with the end user.
            #
            #   @return [String, nil]
            optional :value, String, nil?: true

            # @!method initialize(type: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::ExternalRequirements::SubNumberOrderUpdateResponse::Data::RequirementAction}
            #   for more details.
            #
            #   @param type [String]
            #
            #   @param value [String, nil] For Australia mobile ID verification, the unique Onfido verification link to sha
          end
        end
      end
    end
  end
end
