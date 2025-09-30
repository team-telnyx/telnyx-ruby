# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#delete
    class SimCardDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute report_lost
      #   Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
      #   is irreversible and the eSIM cannot be re-registered.
      #
      #   @return [Boolean, nil]
      optional :report_lost, Telnyx::Internal::Type::Boolean

      # @!method initialize(report_lost: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardDeleteParams} for more details.
      #
      #   @param report_lost [Boolean] Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
