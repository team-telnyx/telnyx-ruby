# typed: strong

module Telnyx
  module Models
    module OperatorConnect
      class ActionRefreshResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OperatorConnect::ActionRefreshResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A message describing the result of the operation
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # Describes wether or not the operation was successful
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig do
          params(message: String, success: T::Boolean).returns(T.attached_class)
        end
        def self.new(
          # A message describing the result of the operation
          message: nil,
          # Describes wether or not the operation was successful
          success: nil
        )
        end

        sig { override.returns({ message: String, success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
