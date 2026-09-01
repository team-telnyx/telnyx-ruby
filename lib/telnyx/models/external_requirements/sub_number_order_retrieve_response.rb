# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalRequirements
      # @see Telnyx::Resources::ExternalRequirements::SubNumberOrders#retrieve
      class SubNumberOrderRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data]

        # @see Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute fields_required
          #   The fields the end user must provide to fulfill this requirement.
          #
          #   @return [Array<Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired>, nil]
          optional :fields_required,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired] }

          # @!attribute regulatory_requirement_id
          #
          #   @return [String, nil]
          optional :regulatory_requirement_id, String

          # @!attribute requirement_action
          #
          #   @return [Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction, nil]
          optional :requirement_action,
                   -> { Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction }

          # @!method initialize(fields_required: nil, regulatory_requirement_id: nil, requirement_action: nil)
          #   @param fields_required [Array<Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::FieldsRequired>] The fields the end user must provide to fulfill this requirement.
          #
          #   @param regulatory_requirement_id [String]
          #
          #   @param requirement_action [Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction]

          class FieldsRequired < Telnyx::Internal::Type::BaseModel
            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute name
            #   The field name to send inside the `requirement` object on the POST.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute type
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute value
            #   The value already stored for this field, or null if not yet provided.
            #
            #   @return [String, nil]
            optional :value, String, nil?: true

            # @!method initialize(description: nil, name: nil, type: nil, value: nil)
            #   @param description [String]
            #
            #   @param name [String] The field name to send inside the `requirement` object on the POST.
            #
            #   @param type [String]
            #
            #   @param value [String, nil] The value already stored for this field, or null if not yet provided.
          end

          # @see Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data#requirement_action
          class RequirementAction < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   The type of action the end user must complete.
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute value
            #   The action value. For ID verification this is the verification link URL, or null
            #   until it has been generated.
            #
            #   @return [String, nil]
            optional :value, String, nil?: true

            # @!method initialize(type: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::ExternalRequirements::SubNumberOrderRetrieveResponse::Data::RequirementAction}
            #   for more details.
            #
            #   @param type [String] The type of action the end user must complete.
            #
            #   @param value [String, nil] The action value. For ID verification this is the verification link URL, or null
          end
        end
      end
    end
  end
end
