# typed: strong

module Telnyx
  module Models
    module Queues
      class CallListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Queues::CallListParams, Telnyx::Internal::AnyHash)
          end

        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[before], page[limit], page[size], page[number]
        sig { returns(T.nilable(Telnyx::Queues::CallListParams::Page)) }
        attr_reader :page

        sig { params(page: Telnyx::Queues::CallListParams::Page::OrHash).void }
        attr_writer :page

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
            page: Telnyx::Queues::CallListParams::Page::OrHash,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Consolidated page parameter (deepObject style). Originally: page[after],
          # page[before], page[limit], page[size], page[number]
          page: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page: Telnyx::Queues::CallListParams::Page,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Page < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Queues::CallListParams::Page,
                Telnyx::Internal::AnyHash
              )
            end

          # Opaque identifier of next page
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Opaque identifier of previous page
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          # Limit of records per single page
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Consolidated page parameter (deepObject style). Originally: page[after],
          # page[before], page[limit], page[size], page[number]
          sig do
            params(after: String, before: String, limit: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Opaque identifier of next page
            after: nil,
            # Opaque identifier of previous page
            before: nil,
            # Limit of records per single page
            limit: nil
          )
          end

          sig do
            override.returns({ after: String, before: String, limit: Integer })
          end
          def to_hash
          end
        end
      end
    end
  end
end
