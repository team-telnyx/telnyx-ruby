# frozen_string_literal: true

module Telnyx
  module Models
    class UserRequirement < Telnyx::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!attribute field_type
      #
      #   @return [String, nil]
      optional :field_type, String

      # @!attribute field_value
      #
      #   @return [String, nil]
      optional :field_value, String

      # @!attribute requirement_id
      #
      #   @return [String, nil]
      optional :requirement_id, String

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::UserRequirement::Status, nil]
      optional :status, enum: -> { Telnyx::UserRequirement::Status }

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(created_at: nil, expires_at: nil, field_type: nil, field_value: nil, requirement_id: nil, status: nil, updated_at: nil)
      #   @param created_at [Time]
      #   @param expires_at [Time]
      #   @param field_type [String]
      #   @param field_value [String]
      #   @param requirement_id [String]
      #   @param status [Symbol, Telnyx::Models::UserRequirement::Status]
      #   @param updated_at [Time]

      # @see Telnyx::Models::UserRequirement#status
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
