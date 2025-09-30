# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#switch_supervisor_role
      class ActionSwitchSupervisorRoleParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute role
        #   The supervisor role to switch to. 'barge' allows speaking to both parties,
        #   'whisper' allows speaking to caller only, 'monitor' allows listening only.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams::Role]
        required :role, enum: -> { Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role }

        # @!method initialize(role:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams} for more details.
        #
        #   @param role [Symbol, Telnyx::Models::Calls::ActionSwitchSupervisorRoleParams::Role] The supervisor role to switch to. 'barge' allows speaking to both parties, 'whis
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The supervisor role to switch to. 'barge' allows speaking to both parties,
        # 'whisper' allows speaking to caller only, 'monitor' allows listening only.
        module Role
          extend Telnyx::Internal::Type::Enum

          BARGE = :barge
          WHISPER = :whisper
          MONITOR = :monitor

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
