# typed: strong

module Telnyx
  module Models
    module Storage
      class SqldbDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::SqldbDeleteParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Delete the database even when functions still bind it. Their bindings stop
        # resolving.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force

        sig { params(force: T::Boolean).void }
        attr_writer :force

        sig do
          params(
            id: String,
            force: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Delete the database even when functions still bind it. Their bindings stop
          # resolving.
          force: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              force: T::Boolean,
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
