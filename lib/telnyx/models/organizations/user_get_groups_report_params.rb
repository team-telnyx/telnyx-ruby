# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#get_groups_report
      class UserGetGroupsReportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute accept
        #
        #   @return [Symbol, Telnyx::Models::Organizations::UserGetGroupsReportParams::Accept, nil]
        optional :accept, enum: -> { Telnyx::Organizations::UserGetGroupsReportParams::Accept }

        # @!method initialize(accept: nil, request_options: {})
        #   @param accept [Symbol, Telnyx::Models::Organizations::UserGetGroupsReportParams::Accept]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module Accept
          extend Telnyx::Internal::Type::Enum

          APPLICATION_JSON = :"application/json"
          TEXT_CSV = :"text/csv"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
