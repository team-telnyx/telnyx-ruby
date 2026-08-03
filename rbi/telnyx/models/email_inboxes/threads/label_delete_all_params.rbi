# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Threads
        class LabelDeleteAllParams < Telnyx::Models::EmailInboxes::Messages::LabelMutationRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::Threads::LabelDeleteAllParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :inbox_id

          sig { returns(String) }
          attr_accessor :thread_id

          sig do
            params(
              inbox_id: String,
              thread_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(inbox_id:, thread_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                inbox_id: String,
                thread_id: String,
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
end
