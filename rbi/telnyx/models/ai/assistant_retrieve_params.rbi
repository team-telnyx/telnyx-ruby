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

        sig { returns(String) }
        attr_accessor :assistant_id

        # Filter results by call control id.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # Whether to fetch dynamic variables from the configured webhook.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fetch_dynamic_variables_from_webhook

        sig { params(fetch_dynamic_variables_from_webhook: T::Boolean).void }
        attr_writer :fetch_dynamic_variables_from_webhook

        # Start of the filter range.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # End of the filter range.
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            assistant_id: String,
            call_control_id: String,
            fetch_dynamic_variables_from_webhook: T::Boolean,
            from: String,
            to: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          assistant_id:,
          # Filter results by call control id.
          call_control_id: nil,
          # Whether to fetch dynamic variables from the configured webhook.
          fetch_dynamic_variables_from_webhook: nil,
          # Start of the filter range.
          from: nil,
          # End of the filter range.
          to: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              assistant_id: String,
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
