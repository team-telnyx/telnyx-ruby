# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionMuteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionMuteParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Array of unique identifiers and tokens for controlling the call. When empty all
        # participants will be muted.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :call_control_ids

        sig { params(call_control_ids: T::Array[String]).void }
        attr_writer :call_control_ids

        sig do
          params(
            call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of unique identifiers and tokens for controlling the call. When empty all
          # participants will be muted.
          call_control_ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              call_control_ids: T::Array[String],
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
