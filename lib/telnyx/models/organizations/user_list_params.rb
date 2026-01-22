# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#list
      class UserListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_email
        #   Filter by email address (partial match)
        #
        #   @return [String, nil]
        optional :filter_email, String

        # @!attribute filter_user_status
        #   Filter by user status
        #
        #   @return [Symbol, Telnyx::Models::Organizations::UserListParams::FilterUserStatus, nil]
        optional :filter_user_status, enum: -> { Telnyx::Organizations::UserListParams::FilterUserStatus }

        # @!attribute include_groups
        #   When set to true, includes the groups array for each user in the response. The
        #   groups array contains objects with id and name for each group the user belongs
        #   to.
        #
        #   @return [Boolean, nil]
        optional :include_groups, Telnyx::Internal::Type::Boolean

        # @!attribute page_number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_email: nil, filter_user_status: nil, include_groups: nil, page_number: nil, page_size: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Organizations::UserListParams} for more details.
        #
        #   @param filter_email [String] Filter by email address (partial match)
        #
        #   @param filter_user_status [Symbol, Telnyx::Models::Organizations::UserListParams::FilterUserStatus] Filter by user status
        #
        #   @param include_groups [Boolean] When set to true, includes the groups array for each user in the response. The g
        #
        #   @param page_number [Integer] The page number to load
        #
        #   @param page_size [Integer] The size of the page
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter by user status
        module FilterUserStatus
          extend Telnyx::Internal::Type::Enum

          ENABLED = :enabled
          DISABLED = :disabled
          BLOCKED = :blocked

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
