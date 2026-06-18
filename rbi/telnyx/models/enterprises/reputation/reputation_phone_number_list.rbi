# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationPhoneNumberList = Reputation::ReputationPhoneNumberList

      module Reputation
        class ReputationPhoneNumberList < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ReputationPhoneNumberList,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[Telnyx::Enterprises::Reputation::ReputationPhoneNumber]
            )
          end
          attr_accessor :data

          # JSON:API pagination metadata returned with every paginated list response. Page
          # numbering is 1-based. `page_size` reports the number of items actually returned
          # in `data` for this page; the requested size is taken from the `page[size]` query
          # parameter.
          sig { returns(Telnyx::NumberReputationPaginationMeta) }
          attr_reader :meta

          sig do
            params(meta: Telnyx::NumberReputationPaginationMeta::OrHash).void
          end
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Enterprises::Reputation::ReputationPhoneNumber::OrHash
                ],
              meta: Telnyx::NumberReputationPaginationMeta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            data:,
            # JSON:API pagination metadata returned with every paginated list response. Page
            # numbering is 1-based. `page_size` reports the number of items actually returned
            # in `data` for this page; the requested size is taken from the `page[size]` query
            # parameter.
            meta:
          )
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Enterprises::Reputation::ReputationPhoneNumber
                  ],
                meta: Telnyx::NumberReputationPaginationMeta
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
