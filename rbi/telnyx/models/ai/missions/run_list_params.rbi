# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        class RunListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Missions::RunListParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Page number (1-based)
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          # Number of items per page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              status: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Page number (1-based)
            page_number: nil,
            # Number of items per page
            page_size: nil,
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                page_number: Integer,
                page_size: Integer,
                status: String,
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
