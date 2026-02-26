# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#retrieve
      class UserRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Organizations::OrganizationUser, nil]
        optional :data, -> { Telnyx::Organizations::OrganizationUser }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Organizations::OrganizationUser]
      end
    end
  end
end
