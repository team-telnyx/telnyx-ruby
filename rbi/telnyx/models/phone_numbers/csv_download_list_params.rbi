# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class CsvDownloadListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::CsvDownloadListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig do
          returns(T.nilable(Telnyx::PhoneNumbers::CsvDownloadListParams::Page))
        end
        attr_reader :page

        sig do
          params(
            page: Telnyx::PhoneNumbers::CsvDownloadListParams::Page::OrHash
          ).void
        end
        attr_writer :page

        sig do
          params(
            page: Telnyx::PhoneNumbers::CsvDownloadListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page: Telnyx::PhoneNumbers::CsvDownloadListParams::Page,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::PhoneNumbers::CsvDownloadListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # The page number to load
          sig { returns(T.nilable(Integer)) }
          attr_reader :number

          sig { params(number: Integer).void }
          attr_writer :number

          # The size of the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :size

          sig { params(size: Integer).void }
          attr_writer :size

          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          sig do
            params(number: Integer, size: Integer).returns(T.attached_class)
          end
          def self.new(
            # The page number to load
            number: nil,
            # The size of the page
            size: nil
          )
          end

          sig { override.returns({ number: Integer, size: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
