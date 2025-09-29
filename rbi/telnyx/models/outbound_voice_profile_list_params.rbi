# typed: strong

module Telnyx
  module Models
    class OutboundVoiceProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::OutboundVoiceProfileListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[name][contains]
      sig { returns(T.nilable(Telnyx::OutboundVoiceProfileListParams::Filter)) }
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::OutboundVoiceProfileListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::OutboundVoiceProfileListParams::Page)) }
      attr_reader :page

      sig do
        params(page: Telnyx::OutboundVoiceProfileListParams::Page::OrHash).void
      end
      attr_writer :page

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul> <br/>
      sig do
        returns(
          T.nilable(Telnyx::OutboundVoiceProfileListParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: Telnyx::OutboundVoiceProfileListParams::Sort::OrSymbol
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::OutboundVoiceProfileListParams::Filter::OrHash,
          page: Telnyx::OutboundVoiceProfileListParams::Page::OrHash,
          sort: Telnyx::OutboundVoiceProfileListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[name][contains]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code>-</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>name</code>: sorts the result by the
        #     <code>name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-name</code>: sorts the result by the
        #     <code>name</code> field in descending order.
        #   </li>
        # </ul> <br/>
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::OutboundVoiceProfileListParams::Filter,
            page: Telnyx::OutboundVoiceProfileListParams::Page,
            sort: Telnyx::OutboundVoiceProfileListParams::Sort::OrSymbol,
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
              Telnyx::OutboundVoiceProfileListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Name filtering operations
        sig do
          returns(
            T.nilable(Telnyx::OutboundVoiceProfileListParams::Filter::Name)
          )
        end
        attr_reader :name

        sig do
          params(
            name: Telnyx::OutboundVoiceProfileListParams::Filter::Name::OrHash
          ).void
        end
        attr_writer :name

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[name][contains]
        sig do
          params(
            name: Telnyx::OutboundVoiceProfileListParams::Filter::Name::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Name filtering operations
          name: nil
        )
        end

        sig do
          override.returns(
            { name: Telnyx::OutboundVoiceProfileListParams::Filter::Name }
          )
        end
        def to_hash
        end

        class Name < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::OutboundVoiceProfileListParams::Filter::Name,
                Telnyx::Internal::AnyHash
              )
            end

          # Optional filter on outbound voice profile name.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Name filtering operations
          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # Optional filter on outbound voice profile name.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::OutboundVoiceProfileListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load.
          number: nil,
          # The size of the page.
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul> <br/>
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OutboundVoiceProfileListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        ENABLED_DESC =
          T.let(
            :"-enabled",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        NAME =
          T.let(
            :name,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        NAME_DESC =
          T.let(
            :"-name",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        SERVICE_PLAN =
          T.let(
            :service_plan,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        SERVICE_PLAN_DESC =
          T.let(
            :"-service_plan",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        TRAFFIC_TYPE =
          T.let(
            :traffic_type,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        TRAFFIC_TYPE_DESC =
          T.let(
            :"-traffic_type",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        USAGE_PAYMENT_METHOD =
          T.let(
            :usage_payment_method,
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )
        USAGE_PAYMENT_METHOD_DESC =
          T.let(
            :"-usage_payment_method",
            Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OutboundVoiceProfileListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
