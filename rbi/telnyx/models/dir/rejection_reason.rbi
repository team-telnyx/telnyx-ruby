# typed: strong

module Telnyx
  module Models
    module Dir
      class RejectionReason < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::RejectionReason, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        # Customer-visible free-text comment from the Telnyx vetting team. Only the first
        # entry of `rejection_reasons` carries this; the rest are `null`.
        sig { returns(T.nilable(String)) }
        attr_accessor :message

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(
            code: String,
            detail: String,
            message: T.nilable(String),
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          code: nil,
          detail: nil,
          # Customer-visible free-text comment from the Telnyx vetting team. Only the first
          # entry of `rejection_reasons` carries this; the rest are `null`.
          message: nil,
          title: nil
        )
        end

        sig do
          override.returns(
            {
              code: String,
              detail: String,
              message: T.nilable(String),
              title: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
