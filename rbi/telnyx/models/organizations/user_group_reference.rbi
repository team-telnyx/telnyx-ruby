# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserGroupReference < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Organizations::UserGroupReference,
              Telnyx::Internal::AnyHash
            )
          end

        # The unique identifier of the group.
        sig { returns(String) }
        attr_accessor :id

        # The name of the group.
        sig { returns(String) }
        attr_accessor :name

        # A reference to a group that a user belongs to.
        sig { params(id: String, name: String).returns(T.attached_class) }
        def self.new(
          # The unique identifier of the group.
          id:,
          # The name of the group.
          name:
        )
        end

        sig { override.returns({ id: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
