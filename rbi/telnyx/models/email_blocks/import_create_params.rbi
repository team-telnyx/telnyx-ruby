# typed: strong

module Telnyx
  module Models
    module EmailBlocks
      class ImportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailBlocks::ImportCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The CSV file (Plug.Upload). Missing/non-upload → 400.
        sig { returns(Telnyx::Internal::FileInput) }
        attr_accessor :file

        # TTL for imported `manual_block` rows; other reasons get `expires_at: null`.
        # Invalid/missing → falls back to 30.
        sig { returns(T.nilable(Integer)) }
        attr_reader :block_ttl_days

        sig { params(block_ttl_days: Integer).void }
        attr_writer :block_ttl_days

        sig do
          params(
            file: Telnyx::Internal::FileInput,
            block_ttl_days: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The CSV file (Plug.Upload). Missing/non-upload → 400.
          file:,
          # TTL for imported `manual_block` rows; other reasons get `expires_at: null`.
          # Invalid/missing → falls back to 30.
          block_ttl_days: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              file: Telnyx::Internal::FileInput,
              block_ttl_days: Integer,
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
