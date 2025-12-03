# typed: strong

module Telnyx
  module Models
    class ReportListWdrsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ReportListWdrsParams, Telnyx::Internal::AnyHash)
        end

      # WDR uuid
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # End date
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # International mobile subscriber identity
      sig { returns(T.nilable(String)) }
      attr_reader :imsi

      sig { params(imsi: String).void }
      attr_writer :imsi

      # Mobile country code
      sig { returns(T.nilable(String)) }
      attr_reader :mcc

      sig { params(mcc: String).void }
      attr_writer :mcc

      # Mobile network code
      sig { returns(T.nilable(String)) }
      attr_reader :mnc

      sig { params(mnc: String).void }
      attr_writer :mnc

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::ReportListWdrsParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::ReportListWdrsParams::Page::OrHash).void }
      attr_writer :page

      # Phone number
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number

      sig { params(phone_number: String).void }
      attr_writer :phone_number

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

      # Sim group name
      sig { returns(T.nilable(String)) }
      attr_reader :sim_group_name

      sig { params(sim_group_name: String).void }
      attr_writer :sim_group_name

      # Field used to order the data. If no field is specified, default value is
      # 'created_at'
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :sort

      sig { params(sort: T::Array[String]).void }
      attr_writer :sort

      # Start date
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      sig do
        params(
          id: String,
          end_date: String,
          imsi: String,
          mcc: String,
          mnc: String,
          page: Telnyx::ReportListWdrsParams::Page::OrHash,
          phone_number: String,
          sim_card_id: String,
          sim_group_id: String,
          sim_group_name: String,
          sort: T::Array[String],
          start_date: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # WDR uuid
        id: nil,
        # End date
        end_date: nil,
        # International mobile subscriber identity
        imsi: nil,
        # Mobile country code
        mcc: nil,
        # Mobile network code
        mnc: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Phone number
        phone_number: nil,
        # Sim card unique identifier
        sim_card_id: nil,
        # Sim group unique identifier
        sim_group_id: nil,
        # Sim group name
        sim_group_name: nil,
        # Field used to order the data. If no field is specified, default value is
        # 'created_at'
        sort: nil,
        # Start date
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            end_date: String,
            imsi: String,
            mcc: String,
            mnc: String,
            page: Telnyx::ReportListWdrsParams::Page,
            phone_number: String,
            sim_card_id: String,
            sim_group_id: String,
            sim_group_name: String,
            sort: T::Array[String],
            start_date: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::ReportListWdrsParams::Page, Telnyx::Internal::AnyHash)
          end

        # Page number
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # Size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # Page number
          number: nil,
          # Size of the page
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
