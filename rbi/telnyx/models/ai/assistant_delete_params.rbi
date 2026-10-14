# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::AssistantDeleteParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :assistant_id

        # Permanently delete the assistant immediately instead of soft-deleting it to the
        # Recently Deleted list, where it stays restorable for 30 days.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hard_delete

        sig { params(hard_delete: T::Boolean).void }
        attr_writer :hard_delete

        sig do
          params(
            assistant_id: String,
            hard_delete: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          assistant_id:,
          # Permanently delete the assistant immediately instead of soft-deleting it to the
          # Recently Deleted list, where it stays restorable for 30 days.
          hard_delete: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant_id: String,
              hard_delete: T::Boolean,
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
