# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories#retrieve
            class MemoryRetrieveResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute data
              #
              #   @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data]
              required :data, -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data }

              # @!method initialize(data:)
              #   @param data [Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data]

              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse#data
              class Data < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute derived_from
                #   The ids of the memories this one was derived from. Read each with
                #   `GET .../memories/{memory_id}` to reach its `source_id`. Set for a derived
                #   memory; null for a fact.
                #
                #   @return [Array<String>, nil]
                required :derived_from, Telnyx::Internal::Type::ArrayOf[String], nil?: true

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

                # @!method initialize(id:, derived_from:, source_id:, text:, recorded_at: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse::Data}
                #   for more details.
                #
                #   @param id [String]
                #
                #   @param derived_from [Array<String>, nil] The ids of the memories this one was derived from. Read each with `GET .../memor
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
end
