# frozen_string_literal: true

module Telnyx
  module Models
    class VirtualCrossConnectCreate < Telnyx::Models::Record
      # @!method initialize

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      #
      # @see Telnyx::Models::VirtualCrossConnectCreate::CloudProvider
      module CloudProvider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        AZURE = :azure
        GCE = :gce
      end
    end
  end
end
