# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Reports#retrieve
      class ReportRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Porting::PortingReport, nil]
        optional :data, -> { Telnyx::Porting::PortingReport }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Porting::PortingReport]
      end
    end
  end
end
