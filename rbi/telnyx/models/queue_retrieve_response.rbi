# typed: strong

module Telnyx
  module Models
    class QueueRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::QueueRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::QueueRetrieveResponse::Data)) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::QueueRetrieveResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::QueueRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: Telnyx::Models::QueueRetrieveResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::QueueRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the queue
        sig { returns(String) }
        attr_accessor :id

        # The average time that the calls currently in the queue have spent waiting, given
        # in seconds.
        sig { returns(Integer) }
        attr_accessor :average_wait_time_secs

        # ISO 8601 formatted date of when the queue was created
        sig { returns(String) }
        attr_accessor :created_at

        # The number of calls currently in the queue
        sig { returns(Integer) }
        attr_accessor :current_size

        # The maximum number of calls allowed in the queue
        sig { returns(Integer) }
        attr_accessor :max_size

        # Name of the queue
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            Telnyx::Models::QueueRetrieveResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # ISO 8601 formatted date of when the queue was last updated
        sig { returns(String) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            average_wait_time_secs: Integer,
            created_at: String,
            current_size: Integer,
            max_size: Integer,
            name: String,
            record_type:
              Telnyx::Models::QueueRetrieveResponse::Data::RecordType::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the queue
          id:,
          # The average time that the calls currently in the queue have spent waiting, given
          # in seconds.
          average_wait_time_secs:,
          # ISO 8601 formatted date of when the queue was created
          created_at:,
          # The number of calls currently in the queue
          current_size:,
          # The maximum number of calls allowed in the queue
          max_size:,
          # Name of the queue
          name:,
          record_type:,
          # ISO 8601 formatted date of when the queue was last updated
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              average_wait_time_secs: Integer,
              created_at: String,
              current_size: Integer,
              max_size: Integer,
              name: String,
              record_type:
                Telnyx::Models::QueueRetrieveResponse::Data::RecordType::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::QueueRetrieveResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUE =
            T.let(
              :queue,
              Telnyx::Models::QueueRetrieveResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::QueueRetrieveResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
