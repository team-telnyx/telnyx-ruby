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

            # How many results a page holds.
            sig { returns(Integer) }
            attr_accessor :page_size

            # Pages that can be requested; 0 when nothing matched. Page until `page_number`
            # reaches it rather than until a page comes back short: a page can hold fewer than
            # `page_size` results without being the last. Capped at the deepest page served,
            # so on a very large listing it covers fewer results than `total_results`.
            sig { returns(Integer) }
            attr_accessor :total_pages

            # Results the request matched, including any past the deepest page.
            sig { returns(Integer) }
            attr_accessor :total_results

            # Where a listing's page sits in the whole.
            #
            # A page is a snapshot: the counts it reports and the order it is drawn in both
            # move as writes land, so paging through a busy namespace can repeat or miss an
            # entry at a page boundary.
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
              # How many results a page holds.
              page_size:,
              # Pages that can be requested; 0 when nothing matched. Page until `page_number`
              # reaches it rather than until a page comes back short: a page can hold fewer than
              # `page_size` results without being the last. Capped at the deepest page served,
              # so on a very large listing it covers fewer results than `total_results`.
              total_pages:,
              # Results the request matched, including any past the deepest page.
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
