# frozen_string_literal: true

module Telnyx
  module Models
    module Brand
      class ExternalVettingListResponseItem < Telnyx::Internal::Type::BaseModel
        # @!attribute create_date
        #   Vetting submission date. This is the date when the vetting request is generated
        #   in ISO 8601 format.
        #
        #   @return [String, nil]
        optional :create_date, String, api_name: :createDate

        # @!attribute evp_id
        #   External vetting provider ID for the brand.
        #
        #   @return [String, nil]
        optional :evp_id, String, api_name: :evpId

        # @!attribute vetted_date
        #   Vetting effective date. This is the date when vetting was completed, or the
        #   starting effective date in ISO 8601 format. If this date is missing, then the
        #   vetting was not complete or not valid.
        #
        #   @return [String, nil]
        optional :vetted_date, String, api_name: :vettedDate

        # @!attribute vetting_class
        #   Identifies the vetting classification.
        #
        #   @return [String, nil]
        optional :vetting_class, String, api_name: :vettingClass

        # @!attribute vetting_id
        #   Unique ID that identifies a vetting transaction performed by a vetting provider.
        #   This ID is provided by the vetting provider at time of vetting.
        #
        #   @return [String, nil]
        optional :vetting_id, String, api_name: :vettingId

        # @!attribute vetting_score
        #   Vetting score ranging from 0-100.
        #
        #   @return [Integer, nil]
        optional :vetting_score, Integer, api_name: :vettingScore

        # @!attribute vetting_token
        #   Required by some providers for vetting record confirmation.
        #
        #   @return [String, nil]
        optional :vetting_token, String, api_name: :vettingToken

        # @!method initialize(create_date: nil, evp_id: nil, vetted_date: nil, vetting_class: nil, vetting_id: nil, vetting_score: nil, vetting_token: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Brand::ExternalVettingListResponseItem} for more details.
        #
        #   @param create_date [String] Vetting submission date. This is the date when the vetting request is generated
        #
        #   @param evp_id [String] External vetting provider ID for the brand.
        #
        #   @param vetted_date [String] Vetting effective date. This is the date when vetting was completed, or the star
        #
        #   @param vetting_class [String] Identifies the vetting classification.
        #
        #   @param vetting_id [String] Unique ID that identifies a vetting transaction performed by a vetting provider.
        #
        #   @param vetting_score [Integer] Vetting score ranging from 0-100.
        #
        #   @param vetting_token [String] Required by some providers for vetting record confirmation.
      end

      # @type [Telnyx::Internal::Type::Converter]
      ExternalVettingListResponse =
        Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Models::Brand::ExternalVettingListResponseItem }]
    end
  end
end
