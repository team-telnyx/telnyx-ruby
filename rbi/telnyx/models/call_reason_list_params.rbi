# typed: strong

module Telnyx
  module Models
    class CallReasonListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::CallReasonListParams, Telnyx::Internal::AnyHash)
        end

      # 1-based page number. Out-of-range values return an empty page with correct meta.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Items per page. Default `100` for this endpoint (the call-reason library is
      # small and most callers want the whole list in one call). Maximum 250; values
      # above are clamped to 250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Default `100` for this endpoint (the call-reason library is
        # small and most callers want the whole list in one call). Maximum 250; values
        # above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_number: Integer,
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
