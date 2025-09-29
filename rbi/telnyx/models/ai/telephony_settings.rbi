# typed: strong

module Telnyx
  module Models
    module AI
      class TelephonySettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::TelephonySettings, Telnyx::Internal::AnyHash)
          end

        # Default Texml App used for voice calls with your assistant. This will be created
        # automatically on assistant creation.
        sig { returns(T.nilable(String)) }
        attr_reader :default_texml_app_id

        sig { params(default_texml_app_id: String).void }
        attr_writer :default_texml_app_id

        # When enabled, allows users to interact with your AI assistant directly from your
        # website without requiring authentication. This is required for FE widgets that
        # work with assistants that have telephony enabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :supports_unauthenticated_web_calls

        sig { params(supports_unauthenticated_web_calls: T::Boolean).void }
        attr_writer :supports_unauthenticated_web_calls

        sig do
          params(
            default_texml_app_id: String,
            supports_unauthenticated_web_calls: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Default Texml App used for voice calls with your assistant. This will be created
          # automatically on assistant creation.
          default_texml_app_id: nil,
          # When enabled, allows users to interact with your AI assistant directly from your
          # website without requiring authentication. This is required for FE widgets that
          # work with assistants that have telephony enabled.
          supports_unauthenticated_web_calls: nil
        )
        end

        sig do
          override.returns(
            {
              default_texml_app_id: String,
              supports_unauthenticated_web_calls: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
