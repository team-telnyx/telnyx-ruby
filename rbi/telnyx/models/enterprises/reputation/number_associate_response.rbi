# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberAssociateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data
              ]
            )
          end
          attr_accessor :data

          # JSON:API pagination metadata returned with every paginated list response. Page
          # numbering is 1-based. `page_size` reports the number of items actually returned
          # in `data` for this page; the requested size is taken from the `page[size]` query
          # parameter.
          sig do
            returns(
              Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data::OrHash
                ],
              meta:
                Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta::OrHash
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
                    Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data
                  ],
                meta:
                  Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :enterprise_id

            sig { params(enterprise_id: String).void }
            attr_writer :enterprise_id

            # E.164 with leading `+`.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            # `null` until the first refresh has been collected for this number.
            sig { returns(T.nilable(Telnyx::ReputationData)) }
            attr_reader :reputation_data

            sig do
              params(
                reputation_data: T.nilable(Telnyx::ReputationData::OrHash)
              ).void
            end
            attr_writer :reputation_data

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig do
              params(
                id: String,
                created_at: Time,
                enterprise_id: String,
                phone_number: String,
                reputation_data: T.nilable(Telnyx::ReputationData::OrHash),
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              created_at: nil,
              enterprise_id: nil,
              # E.164 with leading `+`.
              phone_number: nil,
              # `null` until the first refresh has been collected for this number.
              reputation_data: nil,
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  created_at: Time,
                  enterprise_id: String,
                  phone_number: String,
                  reputation_data: T.nilable(Telnyx::ReputationData),
                  updated_at: Time
                }
              )
            end
            def to_hash
            end
          end

          class Meta < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Enterprises::Reputation::NumberAssociateResponse::Meta,
                  Telnyx::Internal::AnyHash
                )
              end

            # 1-based index of this page. Echoes the `page[number]` query parameter (default
            # `1`).
            sig { returns(Integer) }
            attr_accessor :page_number

            # Number of items returned in this page's `data` array. Capped at 250.
            sig { returns(Integer) }
            attr_accessor :page_size

            # Total number of pages available given the current `page_size`.
            sig { returns(Integer) }
            attr_accessor :total_pages

            # Total number of items across all pages (excludes soft-deleted rows).
            sig { returns(Integer) }
            attr_accessor :total_results

            # JSON:API pagination metadata returned with every paginated list response. Page
            # numbering is 1-based. `page_size` reports the number of items actually returned
            # in `data` for this page; the requested size is taken from the `page[size]` query
            # parameter.
            sig do
              params(
                page_number: Integer,
                page_size: Integer,
                total_pages: Integer,
                total_results: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # 1-based index of this page. Echoes the `page[number]` query parameter (default
              # `1`).
              page_number:,
              # Number of items returned in this page's `data` array. Capped at 250.
              page_size:,
              # Total number of pages available given the current `page_size`.
              total_pages:,
              # Total number of items across all pages (excludes soft-deleted rows).
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
