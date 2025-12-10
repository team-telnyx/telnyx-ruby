# typed: strong

module Telnyx
  module Models
    module Messaging
      module Rcs
        class AgentListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Messaging::Rcs::AgentListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[Telnyx::RcsAgent])) }
          attr_reader :data

          sig { params(data: T::Array[Telnyx::RcsAgent::OrHash]).void }
          attr_writer :data

          sig do
            returns(
              T.nilable(Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta)
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data: T::Array[Telnyx::RcsAgent::OrHash],
              meta:
                Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil, meta: nil)
          end

          sig do
            override.returns(
              {
                data: T::Array[Telnyx::RcsAgent],
                meta: Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta
              }
            )
          end
          def to_hash
          end

          class Meta < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :page_number

            sig { returns(Integer) }
            attr_accessor :page_size

            sig { returns(Integer) }
            attr_accessor :total_pages

            sig { returns(Integer) }
            attr_accessor :total_results

            sig do
              params(
                page_number: Integer,
                page_size: Integer,
                total_pages: Integer,
                total_results: Integer
              ).returns(T.attached_class)
            end
            def self.new(page_number:, page_size:, total_pages:, total_results:)
            end

            sig do
              override.returns(
                {
                  page_number: Integer,
                  page_size: Integer,
                  total_pages: Integer,
                  total_results: Integer
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
end
