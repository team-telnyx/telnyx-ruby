# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementGroups#create
    class RequirementGroup < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute action
      #
      #   @return [String, nil]
      optional :action, String

      # @!attribute country_code
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute phone_number_type
      #
      #   @return [String, nil]
      optional :phone_number_type, String

      # @!attribute record_type
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::UserRequirement>, nil]
      optional :regulatory_requirements, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::UserRequirement] }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::RequirementGroup::Status, nil]
      optional :status, enum: -> { Telnyx::RequirementGroup::Status }

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, action: nil, country_code: nil, created_at: nil, customer_reference: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, status: nil, updated_at: nil)
      #   @param id [String]
      #   @param action [String]
      #   @param country_code [String]
      #   @param created_at [Time]
      #   @param customer_reference [String]
      #   @param phone_number_type [String]
      #   @param record_type [String]
      #   @param regulatory_requirements [Array<Telnyx::Models::UserRequirement>]
      #   @param status [Symbol, Telnyx::Models::RequirementGroup::Status]
      #   @param updated_at [Time]

      # @see Telnyx::Models::RequirementGroup#status
      module Status
        extend Telnyx::Internal::Type::Enum

        APPROVED = :approved
        UNAPPROVED = :unapproved
        PENDING_APPROVAL = :"pending-approval"
        DECLINED = :declined
        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
