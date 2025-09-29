# typed: strong

module Telnyx
  module Models
    module Conferences
      class ActionUnholdParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Conferences::ActionUnholdParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of unique identifiers and tokens for controlling the call. Enter each call
        # control ID to be unheld.
        sig { returns(T::Array[String]) }
        attr_accessor :call_control_ids

        sig do
          params(
            call_control_ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of unique identifiers and tokens for controlling the call. Enter each call
          # control ID to be unheld.
          call_control_ids:,
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
