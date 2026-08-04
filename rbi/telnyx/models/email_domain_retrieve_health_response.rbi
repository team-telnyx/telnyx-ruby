# typed: strong

module Telnyx
  module Models
    class EmailDomainRetrieveHealthResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailDomainRetrieveHealthResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::EmailDomainRetrieveHealthResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EmailDomainRetrieveHealthResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier for the email domain
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of the last health check
        sig { returns(Time) }
        attr_accessor :checked_at

        # Record type discriminator
        sig do
          returns(
            Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Current domain status
        sig do
          returns(
            Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Whether the domain is usable for receiving inbound email
        sig { returns(T::Boolean) }
        attr_accessor :usable_for_inbound

        # Whether the domain is usable for sending email
        sig { returns(T::Boolean) }
        attr_accessor :usable_for_sending

        sig { returns(Telnyx::EmailDomainVerification) }
        attr_reader :verification

        sig do
          params(verification: Telnyx::EmailDomainVerification::OrHash).void
        end
        attr_writer :verification

        sig do
          params(
            id: String,
            checked_at: Time,
            record_type:
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType::OrSymbol,
            status:
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::OrSymbol,
            usable_for_inbound: T::Boolean,
            usable_for_sending: T::Boolean,
            verification: Telnyx::EmailDomainVerification::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the email domain
          id:,
          # Timestamp of the last health check
          checked_at:,
          # Record type discriminator
          record_type:,
          # Current domain status
          status:,
          # Whether the domain is usable for receiving inbound email
          usable_for_inbound:,
          # Whether the domain is usable for sending email
          usable_for_sending:,
          verification:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checked_at: Time,
              record_type:
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType::TaggedSymbol,
              status:
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol,
              usable_for_inbound: T::Boolean,
              usable_for_sending: T::Boolean,
              verification: Telnyx::EmailDomainVerification
            }
          )
        end
        def to_hash
        end

        # Record type discriminator
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_DOMAIN_HEALTH =
            T.let(
              :email_domain_health,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current domain status
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )
          VERIFYING =
            T.let(
              :verifying,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )
          DEGRADED =
            T.let(
              :degraded,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailDomainRetrieveHealthResponse::Data::Status::TaggedSymbol
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
