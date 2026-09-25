# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories#list
            class MemoryListResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute source_id
              #   The source this memory was extracted from. Set for a fact, which comes from
              #   exactly one source; null for a memory derived from other memories. Read it with
              #   `GET .../sources/{source_id}`. A source deleted a moment ago can still be named
              #   here, and then answers 404.
              #
              #   @return [String, nil]
              required :source_id, String, nil?: true

              # @!attribute text
              #
              #   @return [String]
              required :text, String

              # @!attribute recorded_at
              #
              #   @return [String, nil]
              optional :recorded_at, String, nil?: true

              # @!method initialize(id:, source_id:, text:, recorded_at: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse} for more
              #   details.
              #
              #   @param id [String]
              #
              #   @param source_id [String, nil] The source this memory was extracted from. Set for a fact, which comes from exac
              #
              #   @param text [String]
              #
              #   @param recorded_at [String, nil]
            end
          end
        end
      end
    end
  end
end
