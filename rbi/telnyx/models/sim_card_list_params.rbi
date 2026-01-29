# typed: strong

module Telnyx
  module Models
    class SimCardListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for SIM cards (deepObject style). Originally:
      # filter[iccid], filter[msisdn], filter[status], filter[tags]
      sig { returns(T.nilable(Telnyx::SimCardListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::SimCardListParams::Filter::OrHash).void }
      attr_writer :filter

      # A valid SIM card group ID.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_sim_card_group_id

      sig { params(filter_sim_card_group_id: String).void }
      attr_writer :filter_sim_card_group_id

      # It includes the associated SIM card group object in the response when present.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_sim_card_group

      sig { params(include_sim_card_group: T::Boolean).void }
      attr_writer :include_sim_card_group

      # Consolidated pagination parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::SimCardListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::SimCardListParams::Page::OrHash).void }
      attr_writer :page

      # Sorts SIM cards by the given field. Defaults to ascending order unless field is
      # prefixed with a minus sign.
      sig { returns(T.nilable(Telnyx::SimCardListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::SimCardListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::SimCardListParams::Filter::OrHash,
          filter_sim_card_group_id: String,
          include_sim_card_group: T::Boolean,
          page: Telnyx::SimCardListParams::Page::OrHash,
          sort: Telnyx::SimCardListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for SIM cards (deepObject style). Originally:
        # filter[iccid], filter[msisdn], filter[status], filter[tags]
        filter: nil,
        # A valid SIM card group ID.
        filter_sim_card_group_id: nil,
        # It includes the associated SIM card group object in the response when present.
        include_sim_card_group: nil,
        # Consolidated pagination parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Sorts SIM cards by the given field. Defaults to ascending order unless field is
        # prefixed with a minus sign.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::SimCardListParams::Filter,
            filter_sim_card_group_id: String,
            include_sim_card_group: T::Boolean,
            page: Telnyx::SimCardListParams::Page,
            sort: Telnyx::SimCardListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCardListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # A search string to partially match for the SIM card's ICCID.
        sig { returns(T.nilable(String)) }
        attr_reader :iccid

        sig { params(iccid: String).void }
        attr_writer :iccid

        # A search string to match for the SIM card's MSISDN.
        sig { returns(T.nilable(String)) }
        attr_reader :msisdn

        sig { params(msisdn: String).void }
        attr_writer :msisdn

        # Filter by a SIM card's status.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::SimCardListParams::Filter::Status::OrSymbol]
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              T::Array[Telnyx::SimCardListParams::Filter::Status::OrSymbol]
          ).void
        end
        attr_writer :status

        # A list of SIM card tags to filter on.<br/><br/> If the SIM card contains
        # <b><i>all</i></b> of the given <code>tags</code> they will be found.<br/><br/>
        # For example, if the SIM cards have the following tags: <ul>
        #
        #   <li><code>['customers', 'staff', 'test']</code>
        #   <li><code>['test']</code></li>
        #   <li><code>['customers']</code></li>
        # </ul>
        # Searching for <code>['customers', 'test']</code> returns only the first because it's the only one with both tags.<br/> Searching for <code>test</code> returns the first two SIMs, because both of them have such tag.<br/> Searching for <code>customers</code> returns the first and last SIMs.<br/>
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Consolidated filter parameter for SIM cards (deepObject style). Originally:
        # filter[iccid], filter[msisdn], filter[status], filter[tags]
        sig do
          params(
            iccid: String,
            msisdn: String,
            status:
              T::Array[Telnyx::SimCardListParams::Filter::Status::OrSymbol],
            tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A search string to partially match for the SIM card's ICCID.
          iccid: nil,
          # A search string to match for the SIM card's MSISDN.
          msisdn: nil,
          # Filter by a SIM card's status.
          status: nil,
          # A list of SIM card tags to filter on.<br/><br/> If the SIM card contains
          # <b><i>all</i></b> of the given <code>tags</code> they will be found.<br/><br/>
          # For example, if the SIM cards have the following tags: <ul>
          #
          #   <li><code>['customers', 'staff', 'test']</code>
          #   <li><code>['test']</code></li>
          #   <li><code>['customers']</code></li>
          # </ul>
          # Searching for <code>['customers', 'test']</code> returns only the first because it's the only one with both tags.<br/> Searching for <code>test</code> returns the first two SIMs, because both of them have such tag.<br/> Searching for <code>customers</code> returns the first and last SIMs.<br/>
          tags: nil
        )
        end

        sig do
          override.returns(
            {
              iccid: String,
              msisdn: String,
              status:
                T::Array[Telnyx::SimCardListParams::Filter::Status::OrSymbol],
              tags: T::Array[String]
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::SimCardListParams::Filter::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :enabled,
              Telnyx::SimCardListParams::Filter::Status::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::SimCardListParams::Filter::Status::TaggedSymbol
            )
          STANDBY =
            T.let(
              :standby,
              Telnyx::SimCardListParams::Filter::Status::TaggedSymbol
            )
          DATA_LIMIT_EXCEEDED =
            T.let(
              :data_limit_exceeded,
              Telnyx::SimCardListParams::Filter::Status::TaggedSymbol
            )
          UNAUTHORIZED_IMEI =
            T.let(
              :unauthorized_imei,
              Telnyx::SimCardListParams::Filter::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::SimCardListParams::Filter::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::SimCardListParams::Page, Telnyx::Internal::AnyHash)
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

        # Consolidated pagination parameter (deepObject style). Originally: page[number],
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

      # Sorts SIM cards by the given field. Defaults to ascending order unless field is
      # prefixed with a minus sign.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimCardListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CURRENT_BILLING_PERIOD_CONSUMED_DATA_AMOUNT =
          T.let(
            :"current_billing_period_consumed_data.amount",
            Telnyx::SimCardListParams::Sort::TaggedSymbol
          )
        MINUS_CURRENT_BILLING_PERIOD_CONSUMED_DATA_AMOUNT =
          T.let(
            :"-current_billing_period_consumed_data.amount",
            Telnyx::SimCardListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::SimCardListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
