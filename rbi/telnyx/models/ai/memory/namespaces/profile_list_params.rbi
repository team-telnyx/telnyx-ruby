# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class ProfileListParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::ProfileListParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :namespace

            # The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
            # page[size] may be at most 10000.
            sig { returns(T.nilable(Integer)) }
            attr_reader :page_number

            sig { params(page_number: Integer).void }
            attr_writer :page_number

            # How many results a page holds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :page_size

            sig { params(page_size: Integer).void }
            attr_writer :page_size

            sig do
              params(
                namespace: String,
                page_number: Integer,
                page_size: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              namespace:,
              # The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
              # page[size] may be at most 10000.
              page_number: nil,
              # How many results a page holds.
              page_size: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  namespace: String,
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
    end
  end
end
