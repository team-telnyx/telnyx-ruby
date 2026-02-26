# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      class BrandOptionalAttributes < Telnyx::Internal::Type::BaseModel
        # @!attribute tax_exempt_status
        #   The tax exempt status of the brand
        #
        #   @return [String, nil]
        optional :tax_exempt_status, String, api_name: :taxExemptStatus

        # @!method initialize(tax_exempt_status: nil)
        #   @param tax_exempt_status [String] The tax exempt status of the brand
      end
    end
  end
end
