# typed: strong

module Telnyx
  module Models
    class MessagingURLDomainListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingURLDomainListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::MessagingURLDomainListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MessagingURLDomainListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        returns(T.nilable(Telnyx::Models::MessagingURLDomainListResponse::Meta))
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::MessagingURLDomainListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MessagingURLDomainListResponse::Data::OrHash
            ],
          meta: Telnyx::Models::MessagingURLDomainListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::MessagingURLDomainListResponse::Data],
            meta: Telnyx::Models::MessagingURLDomainListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingURLDomainListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :url_domain

        sig { params(url_domain: String).void }
        attr_writer :url_domain

        sig { returns(T.nilable(String)) }
        attr_reader :use_case

        sig { params(use_case: String).void }
        attr_writer :use_case

        sig do
          params(
            id: String,
            record_type: String,
            url_domain: String,
            use_case: String
          ).returns(T.attached_class)
        end
        def self.new(id: nil, record_type: nil, url_domain: nil, use_case: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              record_type: String,
              url_domain: String,
              use_case: String
            }
          )
        end
        def to_hash
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingURLDomainListResponse::Meta,
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
