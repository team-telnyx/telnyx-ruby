# typed: strong

module Telnyx
  module Models
    module Organizations
      module Users
        class ActionRemoveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Organizations::Users::ActionRemoveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Telnyx::Organizations::OrganizationUser)) }
          attr_reader :data

          sig do
            params(data: Telnyx::Organizations::OrganizationUser::OrHash).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Organizations::OrganizationUser::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns({ data: Telnyx::Organizations::OrganizationUser })
          end
          def to_hash
          end
        end
      end
    end
  end
end
