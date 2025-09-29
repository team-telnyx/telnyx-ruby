# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserTags#list
    class UserTagListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::UserTagListResponse::Data, nil]
      optional :data, -> { Telnyx::Models::UserTagListResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::UserTagListResponse::Data]

      # @see Telnyx::Models::UserTagListResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute number_tags
        #   A list of your tags on the given resource type. NOTE: The casing of the tags
        #   returned will not necessarily match the casing of the tags when they were added
        #   to a resource. This is because the tags will have the casing of the first time
        #   they were used within the Telnyx system regardless of source.
        #
        #   @return [Array<String>, nil]
        optional :number_tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute outbound_profile_tags
        #   A list of your tags on the given resource type. NOTE: The casing of the tags
        #   returned will not necessarily match the casing of the tags when they were added
        #   to a resource. This is because the tags will have the casing of the first time
        #   they were used within the Telnyx system regardless of source.
        #
        #   @return [Array<String>, nil]
        optional :outbound_profile_tags, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(number_tags: nil, outbound_profile_tags: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UserTagListResponse::Data} for more details.
        #
        #   @param number_tags [Array<String>] A list of your tags on the given resource type. NOTE: The casing of the tags ret
        #
        #   @param outbound_profile_tags [Array<String>] A list of your tags on the given resource type. NOTE: The casing of the tags ret
      end
    end
  end
end
