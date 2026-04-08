# typed: strong

module Telnyx
  module Models
    module Enterprises
      class ReputationRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Enterprises::ReputationRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Frequency for refreshing reputation data
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            )
          end
          attr_reader :check_frequency

          sig do
            params(
              check_frequency:
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::OrSymbol
            ).void
          end
          attr_writer :check_frequency

          # When the reputation settings were created
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # ID of the associated enterprise
          sig { returns(T.nilable(String)) }
          attr_reader :enterprise_id

          sig { params(enterprise_id: String).void }
          attr_writer :enterprise_id

          # ID of the signed LOA document
          sig { returns(T.nilable(String)) }
          attr_accessor :loa_document_id

          # Reasons for rejection (present when status is rejected)
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :rejection_reasons

          # Current enrollment status
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # When the reputation settings were last updated
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              check_frequency:
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::OrSymbol,
              created_at: Time,
              enterprise_id: String,
              loa_document_id: T.nilable(String),
              rejection_reasons: T.nilable(T::Array[String]),
              status:
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Frequency for refreshing reputation data
            check_frequency: nil,
            # When the reputation settings were created
            created_at: nil,
            # ID of the associated enterprise
            enterprise_id: nil,
            # ID of the signed LOA document
            loa_document_id: nil,
            # Reasons for rejection (present when status is rejected)
            rejection_reasons: nil,
            # Current enrollment status
            status: nil,
            # When the reputation settings were last updated
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                check_frequency:
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol,
                created_at: Time,
                enterprise_id: String,
                loa_document_id: T.nilable(String),
                rejection_reasons: T.nilable(T::Array[String]),
                status:
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          # Frequency for refreshing reputation data
          module CheckFrequency
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS_DAILY =
              T.let(
                :business_daily,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            DAILY =
              T.let(
                :daily,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            WEEKLY =
              T.let(
                :weekly,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            BIWEEKLY =
              T.let(
                :biweekly,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )
            NEVER =
              T.let(
                :never,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::CheckFrequency::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Current enrollment status
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
              )
            APPROVED =
              T.let(
                :approved,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
              )
            DELETED =
              T.let(
                :deleted,
                Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Enterprises::ReputationRetrieveResponse::Data::Status::TaggedSymbol
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
end
