# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutoRespConfigCreate < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingProfiles::AutoRespConfigCreate,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :country_code

        sig { returns(T::Array[String]) }
        attr_accessor :keywords

        sig do
          returns(Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::OrSymbol)
        end
        attr_accessor :op

        sig { returns(T.nilable(String)) }
        attr_reader :resp_text

        sig { params(resp_text: String).void }
        attr_writer :resp_text

        sig do
          params(
            country_code: String,
            keywords: T::Array[String],
            op: Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::OrSymbol,
            resp_text: String
          ).returns(T.attached_class)
        end
        def self.new(country_code:, keywords:, op:, resp_text: nil)
        end

        sig do
          override.returns(
            {
              country_code: String,
              keywords: T::Array[String],
              op: Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::OrSymbol,
              resp_text: String
            }
          )
        end
        def to_hash
        end

        module Op
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::MessagingProfiles::AutoRespConfigCreate::Op)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          START =
            T.let(
              :start,
              Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::TaggedSymbol
            )
          STOP =
            T.let(
              :stop,
              Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::TaggedSymbol
            )
          INFO =
            T.let(
              :info,
              Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingProfiles::AutoRespConfigCreate::Op::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
