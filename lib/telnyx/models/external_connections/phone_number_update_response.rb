# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::PhoneNumbers#update
      class PhoneNumberUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber, nil]
        optional :data, -> { Telnyx::ExternalConnections::ExternalConnectionPhoneNumber }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::ExternalConnectionPhoneNumber]
      end
    end
  end
end
