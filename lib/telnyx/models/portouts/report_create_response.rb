# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Reports#create
      class ReportCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Portouts::PortoutReport, nil]
        optional :data, -> { Telnyx::Portouts::PortoutReport }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Portouts::PortoutReport]
      end
    end
  end
end
