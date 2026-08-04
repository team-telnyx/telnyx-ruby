# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class FilterReplaceParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::FilterReplaceParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowlist

        sig { params(allowlist: T::Array[String]).void }
        attr_writer :allowlist

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocklist

        sig { params(blocklist: T::Array[String]).void }
        attr_writer :blocklist

        sig do
          params(
            inbox_id: String,
            allowlist: T::Array[String],
            blocklist: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_id:,
          allowlist: nil,
          blocklist: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inbox_id: String,
              allowlist: T::Array[String],
              blocklist: T::Array[String],
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
