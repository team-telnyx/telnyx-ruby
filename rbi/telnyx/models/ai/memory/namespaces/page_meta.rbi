# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          class PageMeta < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Memory::Namespaces::PageMeta,
                  Telnyx::Internal::AnyHash
                )
              end

            # The page returned, counting from 1.
            sig { returns(Integer) }
            attr_accessor :page_number

            # Results per page.
            sig { returns(Integer) }
            attr_accessor :page_size

            # Pages that can be requested; 0 when nothing matched.
            sig { returns(Integer) }
            attr_accessor :total_pages

            # Results across every page.
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
            def self.new(
              # The page returned, counting from 1.
              page_number:,
              # Results per page.
              page_size:,
              # Pages that can be requested; 0 when nothing matched.
              total_pages:,
              # Results across every page.
              total_results:
            )
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
