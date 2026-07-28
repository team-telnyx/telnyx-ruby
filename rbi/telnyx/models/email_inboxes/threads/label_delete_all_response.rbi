# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Threads
        class LabelDeleteAllResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T::Array[String]) }
            attr_accessor :labels

            sig do
              returns(
                Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType::TaggedSymbol
              )
            end
            attr_accessor :record_type

            sig { returns(T.nilable(String)) }
            attr_reader :inbox_id

            sig { params(inbox_id: String).void }
            attr_writer :inbox_id

            sig do
              params(
                id: String,
                labels: T::Array[String],
                record_type:
                  Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType::OrSymbol,
                inbox_id: String
              ).returns(T.attached_class)
            end
            def self.new(id:, labels:, record_type:, inbox_id: nil)
            end

            sig do
              override.returns(
                {
                  id: String,
                  labels: T::Array[String],
                  record_type:
                    Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType::TaggedSymbol,
                  inbox_id: String
                }
              )
            end
            def to_hash
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              EMAIL_THREAD =
                T.let(
                  :email_thread,
                  Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::EmailInboxes::Threads::LabelDeleteAllResponse::Data::RecordType::TaggedSymbol
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
  end
end
