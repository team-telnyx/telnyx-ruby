# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionSwitchSupervisorRoleParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionSwitchSupervisorRoleParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The supervisor role to switch to. 'barge' allows speaking to both parties,
        # 'whisper' allows speaking to caller only, 'monitor' allows listening only.
        sig do
          returns(
            Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::OrSymbol
          )
        end
        attr_accessor :role

        sig do
          params(
            role:
              Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The supervisor role to switch to. 'barge' allows speaking to both parties,
          # 'whisper' allows speaking to caller only, 'monitor' allows listening only.
          role:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              role:
                Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # The supervisor role to switch to. 'barge' allows speaking to both parties,
        # 'whisper' allows speaking to caller only, 'monitor' allows listening only.
        module Role
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BARGE =
            T.let(
              :barge,
              Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::TaggedSymbol
            )
          WHISPER =
            T.let(
              :whisper,
              Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::TaggedSymbol
            )
          MONITOR =
            T.let(
              :monitor,
              Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::ActionSwitchSupervisorRoleParams::Role::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
