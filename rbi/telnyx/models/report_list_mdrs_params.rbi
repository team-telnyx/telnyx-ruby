# typed: strong

module Telnyx
  module Models
    class ReportListMdrsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ReportListMdrsParams, Telnyx::Internal::AnyHash)
        end

      # Message uuid
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Destination number
      sig { returns(T.nilable(String)) }
      attr_reader :cld

      sig { params(cld: String).void }
      attr_writer :cld

      # Origination number
      sig { returns(T.nilable(String)) }
      attr_reader :cli

      sig { params(cli: String).void }
      attr_writer :cli

      # Direction (inbound or outbound)
      sig do
        returns(T.nilable(Telnyx::ReportListMdrsParams::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: Telnyx::ReportListMdrsParams::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Pagination end date
      sig { returns(T.nilable(String)) }
      attr_reader :end_date

      sig { params(end_date: String).void }
      attr_writer :end_date

      # Type of message
      sig do
        returns(T.nilable(Telnyx::ReportListMdrsParams::MessageType::OrSymbol))
      end
      attr_reader :message_type

      sig do
        params(
          message_type: Telnyx::ReportListMdrsParams::MessageType::OrSymbol
        ).void
      end
      attr_writer :message_type

      # Name of the profile
      sig { returns(T.nilable(String)) }
      attr_reader :profile

      sig { params(profile: String).void }
      attr_writer :profile

      # Pagination start date
      sig { returns(T.nilable(String)) }
      attr_reader :start_date

      sig { params(start_date: String).void }
      attr_writer :start_date

      # Message status
      sig { returns(T.nilable(Telnyx::ReportListMdrsParams::Status::OrSymbol)) }
      attr_reader :status

      sig do
        params(status: Telnyx::ReportListMdrsParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          cld: String,
          cli: String,
          direction: Telnyx::ReportListMdrsParams::Direction::OrSymbol,
          end_date: String,
          message_type: Telnyx::ReportListMdrsParams::MessageType::OrSymbol,
          profile: String,
          start_date: String,
          status: Telnyx::ReportListMdrsParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Message uuid
        id: nil,
        # Destination number
        cld: nil,
        # Origination number
        cli: nil,
        # Direction (inbound or outbound)
        direction: nil,
        # Pagination end date
        end_date: nil,
        # Type of message
        message_type: nil,
        # Name of the profile
        profile: nil,
        # Pagination start date
        start_date: nil,
        # Message status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            cld: String,
            cli: String,
            direction: Telnyx::ReportListMdrsParams::Direction::OrSymbol,
            end_date: String,
            message_type: Telnyx::ReportListMdrsParams::MessageType::OrSymbol,
            profile: String,
            start_date: String,
            status: Telnyx::ReportListMdrsParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Direction (inbound or outbound)
      module Direction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ReportListMdrsParams::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(:INBOUND, Telnyx::ReportListMdrsParams::Direction::TaggedSymbol)
        OUTBOUND =
          T.let(
            :OUTBOUND,
            Telnyx::ReportListMdrsParams::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ReportListMdrsParams::Direction::TaggedSymbol]
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
            T.all(Symbol, Telnyx::ReportListMdrsParams::MessageType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(:SMS, Telnyx::ReportListMdrsParams::MessageType::TaggedSymbol)
        MMS =
          T.let(:MMS, Telnyx::ReportListMdrsParams::MessageType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ReportListMdrsParams::MessageType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Message status
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ReportListMdrsParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GW_TIMEOUT =
          T.let(:GW_TIMEOUT, Telnyx::ReportListMdrsParams::Status::TaggedSymbol)
        DELIVERED =
          T.let(:DELIVERED, Telnyx::ReportListMdrsParams::Status::TaggedSymbol)
        DLR_UNCONFIRMED =
          T.let(
            :DLR_UNCONFIRMED,
            Telnyx::ReportListMdrsParams::Status::TaggedSymbol
          )
        DLR_TIMEOUT =
          T.let(
            :DLR_TIMEOUT,
            Telnyx::ReportListMdrsParams::Status::TaggedSymbol
          )
        RECEIVED =
          T.let(:RECEIVED, Telnyx::ReportListMdrsParams::Status::TaggedSymbol)
        GW_REJECT =
          T.let(:GW_REJECT, Telnyx::ReportListMdrsParams::Status::TaggedSymbol)
        FAILED =
          T.let(:FAILED, Telnyx::ReportListMdrsParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ReportListMdrsParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
