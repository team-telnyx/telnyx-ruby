# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class AutoRespConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingProfiles::AutoRespConfig,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :country_code

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[String]) }
        attr_accessor :keywords

        sig do
          returns(Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol)
        end
        attr_accessor :op

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :resp_text

        sig { params(resp_text: String).void }
        attr_writer :resp_text

        sig do
          params(
            id: String,
            country_code: String,
            created_at: Time,
            keywords: T::Array[String],
            op: Telnyx::MessagingProfiles::AutoRespConfig::Op::OrSymbol,
            updated_at: Time,
            resp_text: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          country_code:,
          created_at:,
          keywords:,
          op:,
          updated_at:,
          resp_text: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              country_code: String,
              created_at: Time,
              keywords: T::Array[String],
              op: Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol,
              updated_at: Time,
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
              T.all(Symbol, Telnyx::MessagingProfiles::AutoRespConfig::Op)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          START =
            T.let(
              :start,
              Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol
            )
          STOP =
            T.let(
              :stop,
              Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol
            )
          INFO =
            T.let(
              :info,
              Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessagingProfiles::AutoRespConfig::Op::TaggedSymbol
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
