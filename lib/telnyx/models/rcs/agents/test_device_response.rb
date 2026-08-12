# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      module Agents
        # @see Telnyx::Resources::Rcs::Agents::TestDevices#create
        class TestDeviceResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute invite_status
          #
          #   @return [Symbol, Telnyx::Models::Rcs::Agents::TestDeviceResponse::InviteStatus]
          required :invite_status, enum: -> { Telnyx::Rcs::Agents::TestDeviceResponse::InviteStatus }

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute test_device_id
          #
          #   @return [String]
          required :test_device_id, String

          # @!method initialize(invite_status:, phone_number:, test_device_id:)
          #   @param invite_status [Symbol, Telnyx::Models::Rcs::Agents::TestDeviceResponse::InviteStatus]
          #   @param phone_number [String]
          #   @param test_device_id [String]

          # @see Telnyx::Models::Rcs::Agents::TestDeviceResponse#invite_status
          module InviteStatus
            extend Telnyx::Internal::Type::Enum

            PENDING = :PENDING
            ACCEPTED = :ACCEPTED
            DECLINED = :DECLINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
