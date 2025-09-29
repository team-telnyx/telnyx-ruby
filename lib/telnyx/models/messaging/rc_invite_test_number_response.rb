# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#invite_test_number
      class RcInviteTestNumberResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data]
        required :data, -> { Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data]

        # @see Telnyx::Models::Messaging::RcInviteTestNumberResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute agent_id
          #   RCS agent ID
          #
          #   @return [String, nil]
          optional :agent_id, String

          # @!attribute phone_number
          #   Phone number that was invited for testing
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute record_type
          #   Identifies the type of the resource
          #
          #   @return [Symbol, Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType }

          # @!attribute status
          #   Status of the test number invitation
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(agent_id: nil, phone_number: nil, record_type: nil, status: nil)
          #   @param agent_id [String] RCS agent ID
          #
          #   @param phone_number [String] Phone number that was invited for testing
          #
          #   @param record_type [Symbol, Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data::RecordType] Identifies the type of the resource
          #
          #   @param status [String] Status of the test number invitation

          # Identifies the type of the resource
          #
          # @see Telnyx::Models::Messaging::RcInviteTestNumberResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            RCS_TEST_NUMBER_INVITE = :"rcs.test_number_invite"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
