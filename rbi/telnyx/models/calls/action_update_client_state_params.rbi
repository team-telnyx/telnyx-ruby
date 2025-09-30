# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionUpdateClientStateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionUpdateClientStateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Use this field to add state to every subsequent webhook. It must be a valid
        # Base-64 encoded string.
        sig { returns(String) }
        attr_accessor :client_state

        sig do
          params(
            client_state: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this field to add state to every subsequent webhook. It must be a valid
          # Base-64 encoded string.
          client_state:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { client_state: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
