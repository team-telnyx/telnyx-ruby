# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncRetrieveShipInspectionResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :reason

          sig { params(reason: String).void }
          attr_writer :reason

          # Stable record type retained by both inspection path aliases.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :runtime

          sig { params(runtime: String).void }
          attr_writer :runtime

          sig { returns(T.nilable(String)) }
          attr_reader :snippet

          sig { params(snippet: String).void }
          attr_writer :snippet

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            )
          end
          attr_reader :stage

          sig do
            params(
              stage:
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::OrSymbol
            ).void
          end
          attr_writer :stage

          sig do
            params(
              created_at: Time,
              reason: String,
              record_type:
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::OrSymbol,
              runtime: String,
              snippet: String,
              stage:
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            created_at: nil,
            reason: nil,
            # Stable record type retained by both inspection path aliases.
            record_type: nil,
            runtime: nil,
            snippet: nil,
            stage: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                reason: String,
                record_type:
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::TaggedSymbol,
                runtime: String,
                snippet: String,
                stage:
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Stable record type retained by both inspection path aliases.
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUILD_LOG_INSPECTION =
              T.let(
                :build_log_inspection,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Stage
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUILD =
              T.let(
                :build,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            PLATFORM =
              T.let(
                :platform,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            PRE_BUILD =
              T.let(
                :pre_build,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            DEPLOY =
              T.let(
                :deploy,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            SECURITY_REVIEW =
              T.let(
                :security_review,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            NONE =
              T.let(
                :none,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveShipInspectionResponse::Data::Stage::TaggedSymbol
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
