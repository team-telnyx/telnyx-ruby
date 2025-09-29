# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionUnmuteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionUnmuteParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of unique identifiers and tokens for controlling the call. Enter each call
        # control ID to be unmuted. When empty all participants will be unmuted.
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
          # List of unique identifiers and tokens for controlling the call. Enter each call
          # control ID to be unmuted. When empty all participants will be unmuted.
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
