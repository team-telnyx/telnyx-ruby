# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChargesBreakdown#retrieve
    class ChargesBreakdownRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ChargesBreakdownRetrieveResponse::Data]
      required :data, -> { Telnyx::Models::ChargesBreakdownRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::ChargesBreakdownRetrieveResponse::Data]

      # @see Telnyx::Models::ChargesBreakdownRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute currency
        #   Currency code
        #
        #   @return [String]
        required :currency, String

        # @!attribute end_date
        #   End date of the breakdown period
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute results
        #   List of phone number charge breakdowns
        #
        #   @return [Array<Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result>]
        required :results,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result] }

        # @!attribute start_date
        #   Start date of the breakdown period
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute user_email
        #   User email address
        #
        #   @return [String]
        required :user_email, String

        # @!attribute user_id
        #   User identifier
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(currency:, end_date:, results:, start_date:, user_email:, user_id:)
        #   @param currency [String] Currency code
        #
        #   @param end_date [Date] End date of the breakdown period
        #
        #   @param results [Array<Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result>] List of phone number charge breakdowns
        #
        #   @param start_date [Date] Start date of the breakdown period
        #
        #   @param user_email [String] User email address
        #
        #   @param user_id [String] User identifier

        class Result < Telnyx::Internal::Type::BaseModel
          # @!attribute charge_type
          #   Type of charge for the number
          #
          #   @return [String]
          required :charge_type, String

          # @!attribute service_owner_email
          #   Email address of the service owner
          #
          #   @return [String]
          required :service_owner_email, String

          # @!attribute service_owner_user_id
          #   User ID of the service owner
          #
          #   @return [String]
          required :service_owner_user_id, String

          # @!attribute services
          #   List of services associated with this number
          #
          #   @return [Array<Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service>]
          required :services,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service] }

          # @!attribute tn
          #   Phone number
          #
          #   @return [String]
          required :tn, String

          # @!method initialize(charge_type:, service_owner_email:, service_owner_user_id:, services:, tn:)
          #   @param charge_type [String] Type of charge for the number
          #
          #   @param service_owner_email [String] Email address of the service owner
          #
          #   @param service_owner_user_id [String] User ID of the service owner
          #
          #   @param services [Array<Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service>] List of services associated with this number
          #
          #   @param tn [String] Phone number

          class Service < Telnyx::Internal::Type::BaseModel
            # @!attribute cost
            #   Cost per unit as decimal string
            #
            #   @return [String]
            required :cost, String

            # @!attribute cost_type
            #   Type of cost (MRC or OTC)
            #
            #   @return [String]
            required :cost_type, String

            # @!attribute name
            #   Service name
            #
            #   @return [String]
            required :name, String

            # @!method initialize(cost:, cost_type:, name:)
            #   @param cost [String] Cost per unit as decimal string
            #
            #   @param cost_type [String] Type of cost (MRC or OTC)
            #
            #   @param name [String] Service name
          end
        end
      end
    end
  end
end
