# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class MessagingListResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy
                  ]
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy::OrHash
                  ]
              ).void
            end
            attr_writer :data

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta::OrHash
              ).void
            end
            attr_writer :meta

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy::OrHash
                  ],
                meta:
                  Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil, meta: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Legacy::Reporting::UsageReports::MdrUsageReportResponseLegacy
                    ],
                  meta:
                    Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta
                }
              )
            end
            def to_hash
            end

            class Meta < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Legacy::Reporting::UsageReports::MessagingListResponse::Meta,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_number

              sig { params(page_number: Integer).void }
              attr_writer :page_number

              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_pages

              sig { params(total_pages: Integer).void }
              attr_writer :total_pages

              sig { returns(T.nilable(Integer)) }
              attr_reader :total_results

              sig { params(total_results: Integer).void }
              attr_writer :total_results

              sig do
                params(
                  page_number: Integer,
                  page_size: Integer,
                  total_pages: Integer,
                  total_results: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                page_number: nil,
                page_size: nil,
                total_pages: nil,
                total_results: nil
              )
              end

              sig do
                override.returns(
                  {
                    page_number: Integer,
                    page_size: Integer,
                    total_pages: Integer,
                    total_results: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
