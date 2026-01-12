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
  end
end
