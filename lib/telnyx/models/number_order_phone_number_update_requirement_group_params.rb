# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#update_requirement_group
    class NumberOrderPhoneNumberUpdateRequirementGroupParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute requirement_group_id
      #   The ID of the requirement group to associate
      #
      #   @return [String]
      required :requirement_group_id, String

      # @!method initialize(requirement_group_id:, request_options: {})
      #   @param requirement_group_id [String] The ID of the requirement group to associate
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
