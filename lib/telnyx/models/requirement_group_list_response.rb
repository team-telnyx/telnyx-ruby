# frozen_string_literal: true

module Telnyx
  module Models
    # @type [Telnyx::Internal::Type::Converter]
    RequirementGroupListResponse = Telnyx::Internal::Type::ArrayOf[-> { Telnyx::RequirementGroup }]
  end
end
