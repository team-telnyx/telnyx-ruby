# typed: strong

module Telnyx
  module Models
    class ChargesSummaryRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ChargesSummaryRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::ChargesSummaryRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::ChargesSummaryRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::ChargesSummaryRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ChargesSummaryRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ChargesSummaryRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Currency code
        sig { returns(String) }
        attr_accessor :currency

        # End date of the summary period
        sig { returns(Date) }
        attr_accessor :end_date

        # Start date of the summary period
        sig { returns(Date) }
        attr_accessor :start_date

        sig do
          returns(Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary)
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          returns(Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total)
        end
        attr_reader :total

        sig do
          params(
            total:
              Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total::OrHash
          ).void
        end
        attr_writer :total

        # User email address
        sig { returns(String) }
        attr_accessor :user_email

        # User identifier
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            currency: String,
            end_date: Date,
            start_date: Date,
            summary:
              Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::OrHash,
            total:
              Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total::OrHash,
            user_email: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Currency code
          currency:,
          # End date of the summary period
          end_date:,
          # Start date of the summary period
          start_date:,
          summary:,
          total:,
          # User email address
          user_email:,
          # User identifier
          user_id:
        )
        end

        sig do
          override.returns(
            {
              currency: String,
              end_date: Date,
              start_date: Date,
              summary:
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary,
              total:
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total,
              user_email: String,
              user_id: String
            }
          )
        end
        def to_hash
        end

        class Summary < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary,
                Telnyx::Internal::AnyHash
              )
            end

          # List of billing adjustments
          sig do
            returns(
              T::Array[
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment
              ]
            )
          end
          attr_accessor :adjustments

          # List of charge summary lines
          sig do
            returns(
              T::Array[
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Variants
              ]
            )
          end
          attr_accessor :lines

          sig do
            params(
              adjustments:
                T::Array[
                  Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment::OrHash
                ],
              lines:
                T::Array[
                  T.any(
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative::OrHash,
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple::OrHash
                  )
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # List of billing adjustments
            adjustments:,
            # List of charge summary lines
            lines:
          )
          end

          sig do
            override.returns(
              {
                adjustments:
                  T::Array[
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment
                  ],
                lines:
                  T::Array[
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Variants
                  ]
              }
            )
          end
          def to_hash
          end

          class Adjustment < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Adjustment,
                  Telnyx::Internal::AnyHash
                )
              end

            # Adjustment amount as decimal string
            sig { returns(String) }
            attr_accessor :amount

            # Description of the adjustment
            sig { returns(String) }
            attr_accessor :description

            # Date when the adjustment occurred
            sig { returns(Date) }
            attr_accessor :event_date

            sig do
              params(
                amount: String,
                description: String,
                event_date: Date
              ).returns(T.attached_class)
            end
            def self.new(
              # Adjustment amount as decimal string
              amount:,
              # Description of the adjustment
              description:,
              # Date when the adjustment occurred
              event_date:
            )
            end

            sig do
              override.returns(
                { amount: String, description: String, event_date: Date }
              )
            end
            def to_hash
            end
          end

          module Line
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative,
                  Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple
                )
              end

            class Comparative < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Comparative,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Service alias
              sig { returns(String) }
              attr_accessor :alias_

              sig { returns(Telnyx::MonthDetail) }
              attr_reader :existing_this_month

              sig do
                params(existing_this_month: Telnyx::MonthDetail::OrHash).void
              end
              attr_writer :existing_this_month

              # Service name
              sig { returns(String) }
              attr_accessor :name

              sig { returns(Telnyx::MonthDetail) }
              attr_reader :new_this_month

              sig { params(new_this_month: Telnyx::MonthDetail::OrHash).void }
              attr_writer :new_this_month

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  alias_: String,
                  existing_this_month: Telnyx::MonthDetail::OrHash,
                  name: String,
                  new_this_month: Telnyx::MonthDetail::OrHash,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Service alias
                alias_:,
                existing_this_month:,
                # Service name
                name:,
                new_this_month:,
                type: :comparative
              )
              end

              sig do
                override.returns(
                  {
                    alias_: String,
                    existing_this_month: Telnyx::MonthDetail,
                    name: String,
                    new_this_month: Telnyx::MonthDetail,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end
            end

            class Simple < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Simple,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Service alias
              sig { returns(String) }
              attr_accessor :alias_

              # Total amount as decimal string
              sig { returns(String) }
              attr_accessor :amount

              # Service name
              sig { returns(String) }
              attr_accessor :name

              # Number of items
              sig { returns(Integer) }
              attr_accessor :quantity

              sig { returns(Symbol) }
              attr_accessor :type

              sig do
                params(
                  alias_: String,
                  amount: String,
                  name: String,
                  quantity: Integer,
                  type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Service alias
                alias_:,
                # Total amount as decimal string
                amount:,
                # Service name
                name:,
                # Number of items
                quantity:,
                type: :simple
              )
              end

              sig do
                override.returns(
                  {
                    alias_: String,
                    amount: String,
                    name: String,
                    quantity: Integer,
                    type: Symbol
                  }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Summary::Line::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class Total < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ChargesSummaryRetrieveResponse::Data::Total,
                Telnyx::Internal::AnyHash
              )
            end

          # Total credits as decimal string
          sig { returns(String) }
          attr_accessor :credits

          # Total existing monthly recurring charges as decimal string
          sig { returns(String) }
          attr_accessor :existing_mrc

          # Grand total of all charges as decimal string
          sig { returns(String) }
          attr_accessor :grand_total

          # Ledger adjustments as decimal string
          sig { returns(String) }
          attr_accessor :ledger_adjustments

          # Total new monthly recurring charges as decimal string
          sig { returns(String) }
          attr_accessor :new_mrc

          # Total new one-time charges as decimal string
          sig { returns(String) }
          attr_accessor :new_otc

          # Other charges as decimal string
          sig { returns(String) }
          attr_accessor :other

          sig do
            params(
              credits: String,
              existing_mrc: String,
              grand_total: String,
              ledger_adjustments: String,
              new_mrc: String,
              new_otc: String,
              other: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Total credits as decimal string
            credits:,
            # Total existing monthly recurring charges as decimal string
            existing_mrc:,
            # Grand total of all charges as decimal string
            grand_total:,
            # Ledger adjustments as decimal string
            ledger_adjustments:,
            # Total new monthly recurring charges as decimal string
            new_mrc:,
            # Total new one-time charges as decimal string
            new_otc:,
            # Other charges as decimal string
            other:
          )
          end

          sig do
            override.returns(
              {
                credits: String,
                existing_mrc: String,
                grand_total: String,
                ledger_adjustments: String,
                new_mrc: String,
                new_otc: String,
                other: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
