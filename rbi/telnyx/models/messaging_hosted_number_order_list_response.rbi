# typed: strong

module Telnyx
  module Models
    class MessagingHostedNumberOrderListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessagingHostedNumberOrderListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Telnyx::MessagingHostedNumberOrder])) }
      attr_reader :data

      sig do
        params(data: T::Array[Telnyx::MessagingHostedNumberOrder::OrHash]).void
      end
      attr_writer :data

      sig do
        returns(
          T.nilable(
            Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta
          )
        )
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::MessagingHostedNumberOrder::OrHash],
          meta:
            Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::MessagingHostedNumberOrder],
            meta: Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingHostedNumberOrderListResponse::Meta,
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
