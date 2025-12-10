# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class MessagingListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbers::MessagingListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[Telnyx::PhoneNumberWithMessagingSettings]))
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::PhoneNumberWithMessagingSettings::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          returns(
            T.nilable(Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta)
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::PhoneNumberWithMessagingSettings::OrHash],
            meta:
              Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::PhoneNumberWithMessagingSettings],
              meta: Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PhoneNumbers::MessagingListResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :page_number

          sig { returns(Integer) }
          attr_accessor :page_size

          sig { returns(Integer) }
          attr_accessor :total_pages

          sig { returns(Integer) }
          attr_accessor :total_results

          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            ).returns(T.attached_class)
          end
          def self.new(page_number:, page_size:, total_pages:, total_results:)
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
