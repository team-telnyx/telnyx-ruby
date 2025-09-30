# frozen_string_literal: true

module Telnyx
  module Models
    # The current status of the interface deployment.
    module InterfaceStatus
      extend Telnyx::Internal::Type::Enum

      CREATED = :created
      PROVISIONING = :provisioning
      PROVISIONED = :provisioned
      DELETING = :deleting

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
