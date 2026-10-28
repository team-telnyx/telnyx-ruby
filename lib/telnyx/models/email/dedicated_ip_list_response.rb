# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#list
      class DedicatedIPListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Email::DedicatedIP>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Email::DedicatedIP] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::Email::DedicatedIP>]
      end
    end
  end
end
