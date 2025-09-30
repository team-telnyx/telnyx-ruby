# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      class RcsCapabilities < Telnyx::Internal::Type::BaseModel
        # @!attribute agent_id
        #   RCS agent ID
        #
        #   @return [String, nil]
        optional :agent_id, String

        # @!attribute agent_name
        #   RCS agent name
        #
        #   @return [String, nil]
        optional :agent_name, String

        # @!attribute features
        #   List of RCS capabilities
        #
        #   @return [Array<String>, nil]
        optional :features, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute phone_number
        #   Phone number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute record_type
        #   Identifies the type of the resource
        #
        #   @return [Symbol, Telnyx::Models::Messaging::RcsCapabilities::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Messaging::RcsCapabilities::RecordType }

        # @!method initialize(agent_id: nil, agent_name: nil, features: nil, phone_number: nil, record_type: nil)
        #   @param agent_id [String] RCS agent ID
        #
        #   @param agent_name [String] RCS agent name
        #
        #   @param features [Array<String>] List of RCS capabilities
        #
        #   @param phone_number [String] Phone number
        #
        #   @param record_type [Symbol, Telnyx::Models::Messaging::RcsCapabilities::RecordType] Identifies the type of the resource

        # Identifies the type of the resource
        #
        # @see Telnyx::Models::Messaging::RcsCapabilities#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          RCS_CAPABILITIES = :"rcs.capabilities"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
