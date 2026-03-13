# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      # Vertical or industry segment of the brand or campaign.
      module Vertical
        extend Telnyx::Internal::Type::Enum

        AGRICULTURE = :AGRICULTURE
        COMMUNICATION = :COMMUNICATION
        CONSTRUCTION = :CONSTRUCTION
        EDUCATION = :EDUCATION
        ENERGY = :ENERGY
        ENTERTAINMENT = :ENTERTAINMENT
        FINANCIAL = :FINANCIAL
        GAMBLING = :GAMBLING
        GOVERNMENT = :GOVERNMENT
        HEALTHCARE = :HEALTHCARE
        HOSPITALITY = :HOSPITALITY
        HUMAN_RESOURCES = :HUMAN_RESOURCES
        INSURANCE = :INSURANCE
        LEGAL = :LEGAL
        MANUFACTURING = :MANUFACTURING
        NGO = :NGO
        POLITICAL = :POLITICAL
        POSTAL = :POSTAL
        PROFESSIONAL = :PROFESSIONAL
        REAL_ESTATE = :REAL_ESTATE
        RETAIL = :RETAIL
        TECHNOLOGY = :TECHNOLOGY
        TRANSPORTATION = :TRANSPORTATION

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
