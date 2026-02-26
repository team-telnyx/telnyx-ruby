# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class Location < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::Location,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :additional_info

        sig { params(additional_info: String).void }
        attr_writer :additional_info

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Represents whether the location is the default or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_default

        sig { params(is_default: T::Boolean).void }
        attr_writer :is_default

        sig do
          params(
            id: String,
            additional_info: String,
            description: String,
            is_default: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the resource.
          id: nil,
          additional_info: nil,
          description: nil,
          # Represents whether the location is the default or not.
          is_default: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              additional_info: String,
              description: String,
              is_default: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
