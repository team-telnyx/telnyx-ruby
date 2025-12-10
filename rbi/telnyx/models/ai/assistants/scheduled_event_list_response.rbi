# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ScheduledEventListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::AI::Assistants::ScheduledEventListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Data::Variants
              ]
            )
          end
          attr_accessor :data

          sig { returns(Telnyx::AI::Assistants::Tests::TestSuites::Meta) }
          attr_reader :meta

          sig do
            params(
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  T.any(
                    Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse::OrHash,
                    Telnyx::AI::Assistants::ScheduledSMSEventResponse::OrHash
                  )
                ],
              meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:, meta:)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Data::Variants
                  ],
                meta: Telnyx::AI::Assistants::Tests::TestSuites::Meta
              }
            )
          end
          def to_hash
          end

          module Data
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse,
                  Telnyx::AI::Assistants::ScheduledSMSEventResponse
                )
              end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Data::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
