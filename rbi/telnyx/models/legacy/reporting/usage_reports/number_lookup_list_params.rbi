# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class NumberLookupListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::NumberLookupListParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :page

            sig { params(page: Integer).void }
            attr_writer :page

            sig { returns(T.nilable(Integer)) }
            attr_reader :per_page

            sig { params(per_page: Integer).void }
            attr_writer :per_page

            sig do
              params(
                page: Integer,
                per_page: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(page: nil, per_page: nil, request_options: {})
            end

            sig do
              override.returns(
                {
                  page: Integer,
                  per_page: Integer,
                  request_options: Telnyx::RequestOptions
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
