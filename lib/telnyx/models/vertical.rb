# frozen_string_literal: true

module Telnyx
  module Models
    # Vertical or industry segment of the brand or campaign.
    module Vertical
      extend Telnyx::Internal::Type::Enum

      REAL_ESTATE = :REAL_ESTATE
      HEALTHCARE = :HEALTHCARE
      ENERGY = :ENERGY
      ENTERTAINMENT = :ENTERTAINMENT
      RETAIL = :RETAIL
      AGRICULTURE = :AGRICULTURE
      INSURANCE = :INSURANCE
      EDUCATION = :EDUCATION
      HOSPITALITY = :HOSPITALITY
      FINANCIAL = :FINANCIAL
      GAMBLING = :GAMBLING
      CONSTRUCTION = :CONSTRUCTION
      NGO = :NGO
      MANUFACTURING = :MANUFACTURING
      GOVERNMENT = :GOVERNMENT
      TECHNOLOGY = :TECHNOLOGY
      COMMUNICATION = :COMMUNICATION

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
