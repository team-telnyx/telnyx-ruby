# typed: strong

module Telnyx
  module Models
    class ReportListWdrsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ReportListWdrsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::ReportListWdrsResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::ReportListWdrsResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::ReportListWdrsResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::ReportListWdrsResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::ReportListWdrsResponse::Data::OrHash],
          meta: Telnyx::Models::ReportListWdrsResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::ReportListWdrsResponse::Data],
            meta: Telnyx::Models::ReportListWdrsResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ReportListWdrsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # WDR id
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(T.nilable(Telnyx::Models::ReportListWdrsResponse::Data::Cost))
        end
        attr_reader :cost

        sig do
          params(
            cost: Telnyx::Models::ReportListWdrsResponse::Data::Cost::OrHash
          ).void
        end
        attr_writer :cost

        # Record created time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData
            )
          )
        end
        attr_reader :downlink_data

        sig do
          params(
            downlink_data:
              Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::OrHash
          ).void
        end
        attr_writer :downlink_data

        # Session duration in seconds.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration_seconds

        sig { params(duration_seconds: Float).void }
        attr_writer :duration_seconds

        # International mobile subscriber identity.
        sig { returns(T.nilable(String)) }
        attr_reader :imsi

        sig { params(imsi: String).void }
        attr_writer :imsi

        # Mobile country code.
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Mobile network code.
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # Phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig do
          returns(T.nilable(Telnyx::Models::ReportListWdrsResponse::Data::Rate))
        end
        attr_reader :rate

        sig do
          params(
            rate: Telnyx::Models::ReportListWdrsResponse::Data::Rate::OrHash
          ).void
        end
        attr_writer :rate

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Sim card unique identifier
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # Sim group unique identifier
        sig { returns(T.nilable(String)) }
        attr_reader :sim_group_id

        sig { params(sim_group_id: String).void }
        attr_writer :sim_group_id

        # Defined sim group name
        sig { returns(T.nilable(String)) }
        attr_reader :sim_group_name

        sig { params(sim_group_name: String).void }
        attr_writer :sim_group_name

        sig do
          returns(
            T.nilable(Telnyx::Models::ReportListWdrsResponse::Data::UplinkData)
          )
        end
        attr_reader :uplink_data

        sig do
          params(
            uplink_data:
              Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::OrHash
          ).void
        end
        attr_writer :uplink_data

        sig do
          params(
            id: String,
            cost: Telnyx::Models::ReportListWdrsResponse::Data::Cost::OrHash,
            created_at: Time,
            downlink_data:
              Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::OrHash,
            duration_seconds: Float,
            imsi: String,
            mcc: String,
            mnc: String,
            phone_number: String,
            rate: Telnyx::Models::ReportListWdrsResponse::Data::Rate::OrHash,
            record_type: String,
            sim_card_id: String,
            sim_group_id: String,
            sim_group_name: String,
            uplink_data:
              Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # WDR id
          id: nil,
          cost: nil,
          # Record created time
          created_at: nil,
          downlink_data: nil,
          # Session duration in seconds.
          duration_seconds: nil,
          # International mobile subscriber identity.
          imsi: nil,
          # Mobile country code.
          mcc: nil,
          # Mobile network code.
          mnc: nil,
          # Phone number
          phone_number: nil,
          rate: nil,
          record_type: nil,
          # Sim card unique identifier
          sim_card_id: nil,
          # Sim group unique identifier
          sim_group_id: nil,
          # Defined sim group name
          sim_group_name: nil,
          uplink_data: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cost: Telnyx::Models::ReportListWdrsResponse::Data::Cost,
              created_at: Time,
              downlink_data:
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData,
              duration_seconds: Float,
              imsi: String,
              mcc: String,
              mnc: String,
              phone_number: String,
              rate: Telnyx::Models::ReportListWdrsResponse::Data::Rate,
              record_type: String,
              sim_card_id: String,
              sim_group_id: String,
              sim_group_name: String,
              uplink_data:
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData
            }
          )
        end
        def to_hash
        end

        class Cost < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ReportListWdrsResponse::Data::Cost,
                Telnyx::Internal::AnyHash
              )
            end

          # Final cost. Cost is calculated as rate \* unit
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # Currency of the rate and cost
          sig do
            returns(
              T.nilable(
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )
            )
          end
          attr_reader :currency

          sig do
            params(
              currency:
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::OrSymbol
            ).void
          end
          attr_writer :currency

          sig do
            params(
              amount: String,
              currency:
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Final cost. Cost is calculated as rate \* unit
            amount: nil,
            # Currency of the rate and cost
            currency: nil
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency:
                  Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Currency of the rate and cost
          module Currency
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUD =
              T.let(
                :AUD,
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ReportListWdrsResponse::Data::Cost::Currency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DownlinkData < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData,
                Telnyx::Internal::AnyHash
              )
            end

          # Downlink data
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # Transmission unit
          sig do
            returns(
              T.nilable(
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          sig do
            params(
              amount: Float,
              unit:
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Downlink data
            amount: nil,
            # Transmission unit
            unit: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                unit:
                  Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Transmission unit
          module Unit
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            B =
              T.let(
                :B,
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
              )
            KB =
              T.let(
                :KB,
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
              )
            MB =
              T.let(
                :MB,
                Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ReportListWdrsResponse::Data::DownlinkData::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Rate < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ReportListWdrsResponse::Data::Rate,
                Telnyx::Internal::AnyHash
              )
            end

          # Rate from which cost is calculated
          sig { returns(T.nilable(String)) }
          attr_reader :amount

          sig { params(amount: String).void }
          attr_writer :amount

          # Currency of the rate and cost
          sig do
            returns(
              T.nilable(
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )
            )
          end
          attr_reader :currency

          sig do
            params(
              currency:
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::OrSymbol
            ).void
          end
          attr_writer :currency

          sig do
            params(
              amount: String,
              currency:
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Rate from which cost is calculated
            amount: nil,
            # Currency of the rate and cost
            currency: nil
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                currency:
                  Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Currency of the rate and cost
          module Currency
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUD =
              T.let(
                :AUD,
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )
            CAD =
              T.let(
                :CAD,
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )
            EUR =
              T.let(
                :EUR,
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )
            GBP =
              T.let(
                :GBP,
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )
            USD =
              T.let(
                :USD,
                Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ReportListWdrsResponse::Data::Rate::Currency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class UplinkData < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData,
                Telnyx::Internal::AnyHash
              )
            end

          # Uplink data
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # Transmission unit
          sig do
            returns(
              T.nilable(
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
              )
            )
          end
          attr_reader :unit

          sig do
            params(
              unit:
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::OrSymbol
            ).void
          end
          attr_writer :unit

          sig do
            params(
              amount: Float,
              unit:
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Uplink data
            amount: nil,
            # Transmission unit
            unit: nil
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                unit:
                  Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Transmission unit
          module Unit
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            B =
              T.let(
                :B,
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
              )
            KB =
              T.let(
                :KB,
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
              )
            MB =
              T.let(
                :MB,
                Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ReportListWdrsResponse::Data::UplinkData::Unit::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ReportListWdrsResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_results

        sig { params(total_results: Integer).void }
        attr_writer :total_results

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          page_number: nil,
          page_size: nil,
          total_pages: nil,
          total_results: nil
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
