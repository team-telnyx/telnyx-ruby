# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::BusinessAccounts#list
      class BusinessAccountListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Internal ID of Whatsapp business account
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute account_review_status
        #   Account review status of Whatsapp business account
        #
        #   @return [String, nil]
        optional :account_review_status, String

        # @!attribute business_verification_status
        #   Business verification status of Whatsapp business account
        #
        #   @return [String, nil]
        optional :business_verification_status, String

        # @!attribute country
        #   Country associated with Whatsapp business account
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute name
        #   Name of Whatsapp business account
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute phone_numbers_count
        #   Count of phone numbers associated with Whatsapp business account
        #
        #   @return [Integer, nil]
        optional :phone_numbers_count, Integer

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #   Status of Whatsapp business account
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute waba_id
        #   WABA ID of Whatsapp business account
        #
        #   @return [String, nil]
        optional :waba_id, String

        # @!method initialize(id: nil, account_review_status: nil, business_verification_status: nil, country: nil, created_at: nil, name: nil, phone_numbers_count: nil, record_type: nil, status: nil, waba_id: nil)
        #   @param id [String] Internal ID of Whatsapp business account
        #
        #   @param account_review_status [String] Account review status of Whatsapp business account
        #
        #   @param business_verification_status [String] Business verification status of Whatsapp business account
        #
        #   @param country [String] Country associated with Whatsapp business account
        #
        #   @param created_at [Time]
        #
        #   @param name [String] Name of Whatsapp business account
        #
        #   @param phone_numbers_count [Integer] Count of phone numbers associated with Whatsapp business account
        #
        #   @param record_type [String]
        #
        #   @param status [String] Status of Whatsapp business account
        #
        #   @param waba_id [String] WABA ID of Whatsapp business account
      end
    end
  end
end
