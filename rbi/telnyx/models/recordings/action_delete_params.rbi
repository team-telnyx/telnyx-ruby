# typed: strong

module Telnyx
  module Models
    module Recordings
      class ActionDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Recordings::ActionDeleteParams,
              Telnyx::Internal::AnyHash
            )
          end

        # List of call recording IDs to delete.
        sig { returns(T::Array[String]) }
        attr_accessor :ids

        sig do
          params(
            ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # List of call recording IDs to delete.
          ids:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { ids: T::Array[String], request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
