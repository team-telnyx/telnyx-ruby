# typed: strong

module Telnyx
  module Models
    module AI
      class ToolListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ToolListParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :filter_name

        sig { params(filter_name: String).void }
        attr_writer :filter_name

        sig { returns(T.nilable(String)) }
        attr_reader :filter_type

        sig { params(filter_type: String).void }
        attr_writer :filter_type

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_name: String,
            filter_type: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          filter_name: nil,
          filter_type: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_name: String,
              filter_type: String,
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
