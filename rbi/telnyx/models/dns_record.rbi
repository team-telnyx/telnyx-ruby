# typed: strong

module Telnyx
  module Models
    class DNSRecord < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::DNSRecord, Telnyx::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :host

      sig { returns(Telnyx::DNSRecord::Purpose::TaggedSymbol) }
      attr_accessor :purpose

      sig { returns(Telnyx::DNSRecord::RecordType::TaggedSymbol) }
      attr_accessor :record_type

      sig { returns(T::Boolean) }
      attr_accessor :required

      sig { returns(Telnyx::DNSRecord::Status::TaggedSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :value

      sig { returns(T.nilable(String)) }
      attr_accessor :actual_value

      sig { returns(T.nilable(Integer)) }
      attr_accessor :priority

      sig do
        params(
          id: String,
          host: String,
          purpose: Telnyx::DNSRecord::Purpose::OrSymbol,
          record_type: Telnyx::DNSRecord::RecordType::OrSymbol,
          required: T::Boolean,
          status: Telnyx::DNSRecord::Status::OrSymbol,
          value: String,
          actual_value: T.nilable(String),
          priority: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        host:,
        purpose:,
        record_type:,
        required:,
        status:,
        value:,
        actual_value: nil,
        priority: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            host: String,
            purpose: Telnyx::DNSRecord::Purpose::TaggedSymbol,
            record_type: Telnyx::DNSRecord::RecordType::TaggedSymbol,
            required: T::Boolean,
            status: Telnyx::DNSRecord::Status::TaggedSymbol,
            value: String,
            actual_value: T.nilable(String),
            priority: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      module Purpose
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DNSRecord::Purpose) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OWNERSHIP = T.let(:ownership, Telnyx::DNSRecord::Purpose::TaggedSymbol)
        SPF = T.let(:spf, Telnyx::DNSRecord::Purpose::TaggedSymbol)
        DKIM = T.let(:dkim, Telnyx::DNSRecord::Purpose::TaggedSymbol)
        DMARC = T.let(:dmarc, Telnyx::DNSRecord::Purpose::TaggedSymbol)
        MX = T.let(:mx, Telnyx::DNSRecord::Purpose::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::DNSRecord::Purpose::TaggedSymbol])
        end
        def self.values
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DNSRecord::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TXT = T.let(:TXT, Telnyx::DNSRecord::RecordType::TaggedSymbol)
        MX = T.let(:MX, Telnyx::DNSRecord::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DNSRecord::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::DNSRecord::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, Telnyx::DNSRecord::Status::TaggedSymbol)
        VERIFIED = T.let(:verified, Telnyx::DNSRecord::Status::TaggedSymbol)
        FAILED = T.let(:failed, Telnyx::DNSRecord::Status::TaggedSymbol)
        NOT_REQUIRED =
          T.let(:not_required, Telnyx::DNSRecord::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::DNSRecord::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
