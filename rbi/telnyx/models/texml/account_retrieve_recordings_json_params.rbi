# typed: strong

module Telnyx
  module Models
    module Texml
      class AccountRetrieveRecordingsJsonParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Texml::AccountRetrieveRecordingsJsonParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filters recording by the creation date. Expected format is ISO8601 date or
        # date-time, ie. {YYYY}-{MM}-{DD} or {YYYY}-{MM}-{DD}T{hh}:{mm}:{ss}Z. Also
        # accepts inequality operators, e.g. DateCreated>=2023-05-22.
        sig { returns(T.nilable(Time)) }
        attr_reader :date_created

        sig { params(date_created: Time).void }
        attr_writer :date_created

        # The number of the page to be displayed, zero-indexed, should be used in
        # conjuction with PageToken.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        # The number of records to be displayed on a page
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            date_created: Time,
            page: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filters recording by the creation date. Expected format is ISO8601 date or
          # date-time, ie. {YYYY}-{MM}-{DD} or {YYYY}-{MM}-{DD}T{hh}:{mm}:{ss}Z. Also
          # accepts inequality operators, e.g. DateCreated>=2023-05-22.
          date_created: nil,
          # The number of the page to be displayed, zero-indexed, should be used in
          # conjuction with PageToken.
          page: nil,
          # The number of records to be displayed on a page
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              date_created: Time,
              page: Integer,
              page_size: Integer,
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
