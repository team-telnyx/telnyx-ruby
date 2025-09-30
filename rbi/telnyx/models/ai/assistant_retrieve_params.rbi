# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::AssistantRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fetch_dynamic_variables_from_webhook

        sig { params(fetch_dynamic_variables_from_webhook: T::Boolean).void }
        attr_writer :fetch_dynamic_variables_from_webhook

        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            call_control_id: String,
            fetch_dynamic_variables_from_webhook: T::Boolean,
            from: String,
            to: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          call_control_id: nil,
          fetch_dynamic_variables_from_webhook: nil,
          from: nil,
          to: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              fetch_dynamic_variables_from_webhook: T::Boolean,
              from: String,
              to: String,
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
