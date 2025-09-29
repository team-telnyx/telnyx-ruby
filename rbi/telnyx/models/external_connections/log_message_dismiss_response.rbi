# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class LogMessageDismissResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::LogMessageDismissResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Describes wether or not the operation was successful
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :success

        sig { params(success: T::Boolean).void }
        attr_writer :success

        sig { params(success: T::Boolean).returns(T.attached_class) }
        def self.new(
          # Describes wether or not the operation was successful
          success: nil
        )
        end

        sig { override.returns({ success: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
