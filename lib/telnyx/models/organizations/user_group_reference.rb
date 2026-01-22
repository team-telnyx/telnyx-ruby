# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      class UserGroupReference < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the group.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The name of the group.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, name:)
        #   A reference to a group that a user belongs to.
        #
        #   @param id [String] The unique identifier of the group.
        #
        #   @param name [String] The name of the group.
      end
    end
  end
end
