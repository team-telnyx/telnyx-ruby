# typed: strong

module Telnyx
  module Models
    class ChargesBreakdownRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ChargesBreakdownRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::ChargesBreakdownRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::ChargesBreakdownRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ChargesBreakdownRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Currency code
        sig { returns(String) }
        attr_accessor :currency

        # End date of the breakdown period
        sig { returns(Date) }
        attr_accessor :end_date

        # List of phone number charge breakdowns
        sig do
          returns(
            T::Array[
              Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result
            ]
          )
        end
        attr_accessor :results

        # Start date of the breakdown period
        sig { returns(Date) }
        attr_accessor :start_date

        # User email address
        sig { returns(String) }
        attr_accessor :user_email

        # User identifier
        sig { returns(String) }
        attr_accessor :user_id

        sig do
          params(
            currency: String,
            end_date: Date,
            results:
              T::Array[
                Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::OrHash
              ],
            start_date: Date,
            user_email: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Currency code
          currency:,
          # End date of the breakdown period
          end_date:,
          # List of phone number charge breakdowns
          results:,
          # Start date of the breakdown period
          start_date:,
          # User email address
          user_email:,
          # User identifier
          user_id:
        )
        end

        sig do
          override.returns(
            {
              currency: String,
              end_date: Date,
              results:
                T::Array[
                  Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result
                ],
              start_date: Date,
              user_email: String,
              user_id: String
            }
          )
        end
        def to_hash
        end

        class Result < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result,
                Telnyx::Internal::AnyHash
              )
            end

          # Type of charge for the number
          sig { returns(String) }
          attr_accessor :charge_type

          # Email address of the service owner
          sig { returns(String) }
          attr_accessor :service_owner_email

          # User ID of the service owner
          sig { returns(String) }
          attr_accessor :service_owner_user_id

          # List of services associated with this number
          sig do
            returns(
              T::Array[
                Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service
              ]
            )
          end
          attr_accessor :services

          # Phone number
          sig { returns(String) }
          attr_accessor :tn

          sig do
            params(
              charge_type: String,
              service_owner_email: String,
              service_owner_user_id: String,
              services:
                T::Array[
                  Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service::OrHash
                ],
              tn: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Type of charge for the number
            charge_type:,
            # Email address of the service owner
            service_owner_email:,
            # User ID of the service owner
            service_owner_user_id:,
            # List of services associated with this number
            services:,
            # Phone number
            tn:
          )
          end

          sig do
            override.returns(
              {
                charge_type: String,
                service_owner_email: String,
                service_owner_user_id: String,
                services:
                  T::Array[
                    Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service
                  ],
                tn: String
              }
            )
          end
          def to_hash
          end

          class Service < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ChargesBreakdownRetrieveResponse::Data::Result::Service,
                  Telnyx::Internal::AnyHash
                )
              end

            # Cost per unit as decimal string
            sig { returns(String) }
            attr_accessor :cost

            # Type of cost (MRC or OTC)
            sig { returns(String) }
            attr_accessor :cost_type

            # Service name
            sig { returns(String) }
            attr_accessor :name

            sig do
              params(cost: String, cost_type: String, name: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Cost per unit as decimal string
              cost:,
              # Type of cost (MRC or OTC)
              cost_type:,
              # Service name
              name:
            )
            end

            sig do
              override.returns(
                { cost: String, cost_type: String, name: String }
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
