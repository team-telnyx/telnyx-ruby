# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChargesSummary#retrieve
    class ChargesSummaryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ChargesSummaryRetrieveResponse::Data]
      required :data, -> { Telnyx::Models::ChargesSummaryRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::ChargesSummaryRetrieveResponse::Data]

      # @see Telnyx::Models::ChargesSummaryRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute currency
        #   Currency code
        #
        #   @return [String]
        required :currency, String

        # @!attribute end_date
        #   End date of the summary period
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute start_date
        #   Start date of the summary period
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute summary
        #
        #   @return [Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary]
        required :summary, -> { Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary }

        # @!attribute total
        #
        #   @return [Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total]
        required :total, -> { Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total }

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

        # @!method initialize(currency:, end_date:, start_date:, summary:, total:, user_email:, user_id:)
        #   @param currency [String] Currency code
        #
        #   @param end_date [Date] End date of the summary period
        #
        #   @param start_date [Date] Start date of the summary period
        #
        #   @param summary [Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary]
        #
        #   @param total [Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total]
        #
        #   @param user_email [String] User email address
        #
        #   @param user_id [String] User identifier

        # @see Telnyx::Models::ChargesSummaryRetrieveResponse::Data#summary
        class Summary < Telnyx::Internal::Type::BaseModel
          # @!attribute adjustments
          #   List of billing adjustments
          #
          #   @return [Array<Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment>]
          required :adjustments,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment] }

          # @!attribute lines
          #   List of charge summary lines
          #
          #   @return [Array<Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative, Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple>]
          required :lines,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line] }

          # @!method initialize(adjustments:, lines:)
          #   @param adjustments [Array<Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment>] List of billing adjustments
          #
          #   @param lines [Array<Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative, Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple>] List of charge summary lines

          class Adjustment < Telnyx::Internal::Type::BaseModel
            # @!attribute amount
            #   Adjustment amount as decimal string
            #
            #   @return [String]
            required :amount, String

            # @!attribute description
            #   Description of the adjustment
            #
            #   @return [String]
            required :description, String

            # @!attribute event_date
            #   Date when the adjustment occurred
            #
            #   @return [Date]
            required :event_date, Date

            # @!method initialize(amount:, description:, event_date:)
            #   @param amount [String] Adjustment amount as decimal string
            #
            #   @param description [String] Description of the adjustment
            #
            #   @param event_date [Date] Date when the adjustment occurred
          end

          module Line
            extend Telnyx::Internal::Type::Union

            discriminator :type

            variant :comparative,
                    -> { Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative }

            variant :simple, -> { Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple }

            class Comparative < Telnyx::Internal::Type::BaseModel
              # @!attribute alias_
              #   Service alias
              #
              #   @return [String]
              required :alias_, String, api_name: :alias

              # @!attribute existing_this_month
              #
              #   @return [Telnyx::Models::MonthDetail]
              required :existing_this_month, -> { Telnyx::MonthDetail }

              # @!attribute name
              #   Service name
              #
              #   @return [String]
              required :name, String

              # @!attribute new_this_month
              #
              #   @return [Telnyx::Models::MonthDetail]
              required :new_this_month, -> { Telnyx::MonthDetail }

              # @!attribute type
              #
              #   @return [Symbol, :comparative]
              required :type, const: :comparative

              # @!method initialize(alias_:, existing_this_month:, name:, new_this_month:, type: :comparative)
              #   @param alias_ [String] Service alias
              #
              #   @param existing_this_month [Telnyx::Models::MonthDetail]
              #
              #   @param name [String] Service name
              #
              #   @param new_this_month [Telnyx::Models::MonthDetail]
              #
              #   @param type [Symbol, :comparative]
            end

            class Simple < Telnyx::Internal::Type::BaseModel
              # @!attribute alias_
              #   Service alias
              #
              #   @return [String]
              required :alias_, String, api_name: :alias

              # @!attribute amount
              #   Total amount as decimal string
              #
              #   @return [String]
              required :amount, String

              # @!attribute name
              #   Service name
              #
              #   @return [String]
              required :name, String

              # @!attribute quantity
              #   Number of items
              #
              #   @return [Integer]
              required :quantity, Integer

              # @!attribute type
              #
              #   @return [Symbol, :simple]
              required :type, const: :simple

              # @!method initialize(alias_:, amount:, name:, quantity:, type: :simple)
              #   @param alias_ [String] Service alias
              #
              #   @param amount [String] Total amount as decimal string
              #
              #   @param name [String] Service name
              #
              #   @param quantity [Integer] Number of items
              #
              #   @param type [Symbol, :simple]
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative, Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple)]
          end
        end

        # @see Telnyx::Models::ChargesSummaryRetrieveResponse::Data#total
        class Total < Telnyx::Internal::Type::BaseModel
          # @!attribute credits
          #   Total credits as decimal string
          #
          #   @return [String]
          required :credits, String

          # @!attribute existing_mrc
          #   Total existing monthly recurring charges as decimal string
          #
          #   @return [String]
          required :existing_mrc, String

          # @!attribute grand_total
          #   Grand total of all charges as decimal string
          #
          #   @return [String]
          required :grand_total, String

          # @!attribute ledger_adjustments
          #   Ledger adjustments as decimal string
          #
          #   @return [String]
          required :ledger_adjustments, String

          # @!attribute new_mrc
          #   Total new monthly recurring charges as decimal string
          #
          #   @return [String]
          required :new_mrc, String

          # @!attribute new_otc
          #   Total new one-time charges as decimal string
          #
          #   @return [String]
          required :new_otc, String

          # @!attribute other
          #   Other charges as decimal string
          #
          #   @return [String]
          required :other, String

          # @!method initialize(credits:, existing_mrc:, grand_total:, ledger_adjustments:, new_mrc:, new_otc:, other:)
          #   @param credits [String] Total credits as decimal string
          #
          #   @param existing_mrc [String] Total existing monthly recurring charges as decimal string
          #
          #   @param grand_total [String] Grand total of all charges as decimal string
          #
          #   @param ledger_adjustments [String] Ledger adjustments as decimal string
          #
          #   @param new_mrc [String] Total new monthly recurring charges as decimal string
          #
          #   @param new_otc [String] Total new one-time charges as decimal string
          #
          #   @param other [String] Other charges as decimal string
        end
      end
    end
  end
end
