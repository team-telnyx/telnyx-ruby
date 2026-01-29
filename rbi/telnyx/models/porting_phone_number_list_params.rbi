# typed: strong

module Telnyx
  module Models
    class PortingPhoneNumberListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingPhoneNumberListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[porting_order_status]
      sig { returns(T.nilable(Telnyx::PortingPhoneNumberListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::PortingPhoneNumberListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::PortingPhoneNumberListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::PortingPhoneNumberListParams::Page::OrHash).void
      end
      attr_writer :page

      sig do
        params(
          filter: Telnyx::PortingPhoneNumberListParams::Filter::OrHash,
          page: Telnyx::PortingPhoneNumberListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_order_status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::PortingPhoneNumberListParams::Filter,
            page: Telnyx::PortingPhoneNumberListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingPhoneNumberListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter results by porting order status
        sig do
          returns(
            T.nilable(
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::OrSymbol
            )
          )
        end
        attr_reader :porting_order_status

        sig do
          params(
            porting_order_status:
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::OrSymbol
          ).void
        end
        attr_writer :porting_order_status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_order_status]
        sig do
          params(
            porting_order_status:
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter results by porting order status
          porting_order_status: nil
        )
        end

        sig do
          override.returns(
            {
              porting_order_status:
                Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter results by porting order status
        module PortingOrderStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          IN_PROCESS =
            T.let(
              :"in-process",
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          EXCEPTION =
            T.let(
              :exception,
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          FOC_DATE_CONFIRMED =
            T.let(
              :"foc-date-confirmed",
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          CANCEL_PENDING =
            T.let(
              :"cancel-pending",
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          PORTED =
            T.let(
              :ported,
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::PortingPhoneNumberListParams::Filter::PortingOrderStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingPhoneNumberListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
