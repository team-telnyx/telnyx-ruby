# typed: strong

module Telnyx
  module Models
    class ReportListMdrsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ReportListMdrsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::ReportListMdrsResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::ReportListMdrsResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Models::ReportListMdrsResponse::Meta)) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::ReportListMdrsResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::ReportListMdrsResponse::Data::OrHash],
          meta: Telnyx::Models::ReportListMdrsResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::ReportListMdrsResponse::Data],
            meta: Telnyx::Models::ReportListMdrsResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ReportListMdrsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Id of message detail record
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The destination number for a call, or the callee
        sig { returns(T.nilable(String)) }
        attr_reader :cld

        sig { params(cld: String).void }
        attr_writer :cld

        # The number associated with the person initiating the call, or the caller
        sig { returns(T.nilable(String)) }
        attr_reader :cli

        sig { params(cli: String).void }
        attr_writer :cli

        # Final cost. Cost is calculated as rate \* parts
        sig { returns(T.nilable(String)) }
        attr_reader :cost

        sig { params(cost: String).void }
        attr_writer :cost

        # Message sent time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Currency of the rate and cost
        sig do
          returns(
            T.nilable(
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )
          )
        end
        attr_reader :currency

        sig do
          params(
            currency:
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::OrSymbol
          ).void
        end
        attr_writer :currency

        # Direction of message - inbound or outbound.
        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        # Type of message
        sig do
          returns(
            T.nilable(
              Telnyx::Models::ReportListMdrsResponse::Data::MessageType::TaggedSymbol
            )
          )
        end
        attr_reader :message_type

        sig do
          params(
            message_type:
              Telnyx::Models::ReportListMdrsResponse::Data::MessageType::OrSymbol
          ).void
        end
        attr_writer :message_type

        # Number of parts this message has. Max number of character is 160. If message
        # contains more characters then that it will be broken down in multiple parts
        sig { returns(T.nilable(Float)) }
        attr_reader :parts

        sig { params(parts: Float).void }
        attr_writer :parts

        # Configured profile name. New profiles can be created and configured on Telnyx
        # portal
        sig { returns(T.nilable(String)) }
        attr_reader :profile_name

        sig { params(profile_name: String).void }
        attr_writer :profile_name

        # Rate applied to the message
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # Message status
        sig do
          returns(
            T.nilable(
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::ReportListMdrsResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            id: String,
            cld: String,
            cli: String,
            cost: String,
            created_at: Time,
            currency:
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::OrSymbol,
            direction: String,
            message_type:
              Telnyx::Models::ReportListMdrsResponse::Data::MessageType::OrSymbol,
            parts: Float,
            profile_name: String,
            rate: String,
            record_type: String,
            status:
              Telnyx::Models::ReportListMdrsResponse::Data::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Id of message detail record
          id: nil,
          # The destination number for a call, or the callee
          cld: nil,
          # The number associated with the person initiating the call, or the caller
          cli: nil,
          # Final cost. Cost is calculated as rate \* parts
          cost: nil,
          # Message sent time
          created_at: nil,
          # Currency of the rate and cost
          currency: nil,
          # Direction of message - inbound or outbound.
          direction: nil,
          # Type of message
          message_type: nil,
          # Number of parts this message has. Max number of character is 160. If message
          # contains more characters then that it will be broken down in multiple parts
          parts: nil,
          # Configured profile name. New profiles can be created and configured on Telnyx
          # portal
          profile_name: nil,
          # Rate applied to the message
          rate: nil,
          record_type: nil,
          # Message status
          status: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              cld: String,
              cli: String,
              cost: String,
              created_at: Time,
              currency:
                Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol,
              direction: String,
              message_type:
                Telnyx::Models::ReportListMdrsResponse::Data::MessageType::TaggedSymbol,
              parts: Float,
              profile_name: String,
              rate: String,
              record_type: String,
              status:
                Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
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
                Telnyx::Models::ReportListMdrsResponse::Data::Currency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUD =
            T.let(
              :AUD,
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )
          CAD =
            T.let(
              :CAD,
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )
          EUR =
            T.let(
              :EUR,
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )
          GBP =
            T.let(
              :GBP,
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )
          USD =
            T.let(
              :USD,
              Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ReportListMdrsResponse::Data::Currency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Type of message
        module MessageType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ReportListMdrsResponse::Data::MessageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :SMS,
              Telnyx::Models::ReportListMdrsResponse::Data::MessageType::TaggedSymbol
            )
          MMS =
            T.let(
              :MMS,
              Telnyx::Models::ReportListMdrsResponse::Data::MessageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ReportListMdrsResponse::Data::MessageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Message status
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::ReportListMdrsResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GW_TIMEOUT =
            T.let(
              :GW_TIMEOUT,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :DELIVERED,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          DLR_UNCONFIRMED =
            T.let(
              :DLR_UNCONFIRMED,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          DLR_TIMEOUT =
            T.let(
              :DLR_TIMEOUT,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :RECEIVED,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          GW_REJECT =
            T.let(
              :GW_REJECT,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ReportListMdrsResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ReportListMdrsResponse::Meta,
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
