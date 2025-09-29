# typed: strong

module Telnyx
  module Models
    module ManagedAccounts
      class ActionDisableResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ManagedAccounts::ActionDisableResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::ManagedAccount)) }
        attr_reader :data

        sig { params(data: Telnyx::ManagedAccount::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::ManagedAccount::OrHash).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::ManagedAccount }) }
        def to_hash
        end
      end
    end
  end
end
