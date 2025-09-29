# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class ConferenceRetrieveConferencesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also
          # accepts inequality operators, e.g. DateCreated>=2023-05-22.
          sig { returns(T.nilable(String)) }
          attr_reader :date_created

          sig { params(date_created: String).void }
          attr_writer :date_created

          # Filters conferences by the time they were last updated. Expected format is
          # YYYY-MM-DD. Also accepts inequality operators, e.g. DateUpdated>=2023-05-22.
          sig { returns(T.nilable(String)) }
          attr_reader :date_updated

          sig { params(date_updated: String).void }
          attr_writer :date_updated

          # Filters conferences by their friendly name.
          sig { returns(T.nilable(String)) }
          attr_reader :friendly_name

          sig { params(friendly_name: String).void }
          attr_writer :friendly_name

          # The number of the page to be displayed, zero-indexed, should be used in
          # conjuction with PageToken.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # The number of records to be displayed on a page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Used to request the next page of results.
          sig { returns(T.nilable(String)) }
          attr_reader :page_token

          sig { params(page_token: String).void }
          attr_writer :page_token

          # Filters conferences by status.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              date_created: String,
              date_updated: String,
              friendly_name: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              status:
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filters conferences by the creation date. Expected format is YYYY-MM-DD. Also
            # accepts inequality operators, e.g. DateCreated>=2023-05-22.
            date_created: nil,
            # Filters conferences by the time they were last updated. Expected format is
            # YYYY-MM-DD. Also accepts inequality operators, e.g. DateUpdated>=2023-05-22.
            date_updated: nil,
            # Filters conferences by their friendly name.
            friendly_name: nil,
            # The number of the page to be displayed, zero-indexed, should be used in
            # conjuction with PageToken.
            page: nil,
            # The number of records to be displayed on a page
            page_size: nil,
            # Used to request the next page of results.
            page_token: nil,
            # Filters conferences by status.
            status: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                date_created: String,
                date_updated: String,
                friendly_name: String,
                page: Integer,
                page_size: Integer,
                page_token: String,
                status:
                  Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Filters conferences by status.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INIT =
              T.let(
                :init,
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::ConferenceRetrieveConferencesParams::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
