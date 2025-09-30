# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module BatchDetailRecords
          class SpeechToTextDeleteResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Identifies the resource
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              sig { returns(T.nilable(Time)) }
              attr_reader :created_at

              sig { params(created_at: Time).void }
              attr_writer :created_at

              # URL to download the report
              sig { returns(T.nilable(String)) }
              attr_reader :download_link

              sig { params(download_link: String).void }
              attr_writer :download_link

              sig { returns(T.nilable(Time)) }
              attr_reader :end_date

              sig { params(end_date: Time).void }
              attr_writer :end_date

              sig { returns(T.nilable(String)) }
              attr_reader :record_type

              sig { params(record_type: String).void }
              attr_writer :record_type

              sig { returns(T.nilable(Time)) }
              attr_reader :start_date

              sig { params(start_date: Time).void }
              attr_writer :start_date

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  )
                )
              end
              attr_reader :status

              sig do
                params(
                  status:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::OrSymbol
                ).void
              end
              attr_writer :status

              sig do
                params(
                  id: String,
                  created_at: Time,
                  download_link: String,
                  end_date: Time,
                  record_type: String,
                  start_date: Time,
                  status:
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Identifies the resource
                id: nil,
                created_at: nil,
                # URL to download the report
                download_link: nil,
                end_date: nil,
                record_type: nil,
                start_date: nil,
                status: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    created_at: Time,
                    download_link: String,
                    end_date: Time,
                    record_type: String,
                    start_date: Time,
                    status:
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              module Status
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :PENDING,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  )
                COMPLETE =
                  T.let(
                    :COMPLETE,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :FAILED,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  )
                EXPIRED =
                  T.let(
                    :EXPIRED,
                    Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Legacy::Reporting::BatchDetailRecords::SpeechToTextDeleteResponse::Data::Status::TaggedSymbol
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
  end
end
