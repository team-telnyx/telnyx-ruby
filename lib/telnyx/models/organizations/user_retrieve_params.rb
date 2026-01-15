# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#retrieve
      class UserRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute include_groups
        #   When set to true, includes the groups array for each user in the response. The
        #   groups array contains objects with id and name for each group the user belongs
        #   to.
        #
        #   @return [Boolean, nil]
        optional :include_groups, Telnyx::Internal::Type::Boolean

        # @!method initialize(include_groups: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Organizations::UserRetrieveParams} for more details.
        #
        #   @param include_groups [Boolean] When set to true, includes the groups array for each user in the response. The g
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
