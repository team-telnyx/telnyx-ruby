# typed: strong

module Telnyx
  module Models
    module ManagedAccounts
      class ActionEnableParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ManagedAccounts::ActionEnableParams,
              Telnyx::Internal::AnyHash
            )
          end

        # When true, all connections owned by this managed account will automatically be
        # re-enabled. Note: Any connections that do not pass validations will not be
        # re-enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reenable_all_connections

        sig { params(reenable_all_connections: T::Boolean).void }
        attr_writer :reenable_all_connections

        sig do
          params(
            reenable_all_connections: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # When true, all connections owned by this managed account will automatically be
          # re-enabled. Note: Any connections that do not pass validations will not be
          # re-enabled.
          reenable_all_connections: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              reenable_all_connections: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
