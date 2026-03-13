# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionStartTranscriptionParams < Telnyx::Models::Calls::TranscriptionStartRequest
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::ActionStartTranscriptionParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :call_control_id

        sig do
          params(
            call_control_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(call_control_id:, request_options: {})
        end

        sig do
          override.returns(
            { call_control_id: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
