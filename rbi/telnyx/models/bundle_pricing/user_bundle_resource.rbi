# typed: strong

module Telnyx
  module Models
    module BundlePricing
      class UserBundleResource < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::BundlePricing::UserBundleResource,
              Telnyx::Internal::AnyHash
            )
          end

        # Resource's ID.
        sig { returns(String) }
        attr_accessor :id

        # Date the resource was created.
        sig { returns(Date) }
        attr_accessor :created_at

        # The resource itself (usually a phone number).
        sig { returns(String) }
        attr_accessor :resource

        # The type of the resource (usually 'number').
        sig { returns(String) }
        attr_accessor :resource_type

        # Date the resource was last updated.
        sig { returns(T.nilable(Date)) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Date,
            resource: String,
            resource_type: String,
            updated_at: T.nilable(Date)
          ).returns(T.attached_class)
        end
        def self.new(
          # Resource's ID.
          id:,
          # Date the resource was created.
          created_at:,
          # The resource itself (usually a phone number).
          resource:,
          # The type of the resource (usually 'number').
          resource_type:,
          # Date the resource was last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Date,
              resource: String,
              resource_type: String,
              updated_at: T.nilable(Date)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
