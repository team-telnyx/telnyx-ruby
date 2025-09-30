# typed: strong

module Telnyx
  module Models
    module Wireless
      class WdrReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Wireless::WdrReport, Telnyx::Internal::AnyHash)
          end

        # ISO 8601 formatted date-time indicating the end time.
        sig { returns(T.nilable(String)) }
        attr_reader :end_time

        sig { params(end_time: String).void }
        attr_writer :end_time

        # The URL where the report content, when generated, will be published to.
        sig { returns(T.nilable(String)) }
        attr_reader :report_url

        sig { params(report_url: String).void }
        attr_writer :report_url

        # ISO 8601 formatted date-time indicating the start time.
        sig { returns(T.nilable(String)) }
        attr_reader :start_time

        sig { params(start_time: String).void }
        attr_writer :start_time

        # Indicates the status of the report, which is updated asynchronously.
        sig do
          returns(T.nilable(Telnyx::Wireless::WdrReport::Status::TaggedSymbol))
        end
        attr_reader :status

        sig do
          params(status: Telnyx::Wireless::WdrReport::Status::OrSymbol).void
        end
        attr_writer :status

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            end_time: String,
            record_type: String,
            report_url: String,
            start_time: String,
            status: Telnyx::Wireless::WdrReport::Status::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # ISO 8601 formatted date-time indicating the end time.
          end_time: nil,
          record_type: nil,
          # The URL where the report content, when generated, will be published to.
          report_url: nil,
          # ISO 8601 formatted date-time indicating the start time.
          start_time: nil,
          # Indicates the status of the report, which is updated asynchronously.
          status: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              end_time: String,
              record_type: String,
              report_url: String,
              start_time: String,
              status: Telnyx::Wireless::WdrReport::Status::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        # Indicates the status of the report, which is updated asynchronously.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Wireless::WdrReport::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(:pending, Telnyx::Wireless::WdrReport::Status::TaggedSymbol)
          COMPLETE =
            T.let(:complete, Telnyx::Wireless::WdrReport::Status::TaggedSymbol)
          FAILED =
            T.let(:failed, Telnyx::Wireless::WdrReport::Status::TaggedSymbol)
          DELETED =
            T.let(:deleted, Telnyx::Wireless::WdrReport::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Wireless::WdrReport::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
