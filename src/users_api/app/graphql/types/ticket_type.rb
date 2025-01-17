module Types
  class TicketType < Types::BaseObject
    field :id, ID, null: false
    field :price, Float, null: false
    field :user, Types::UserType, null: false
    field :movie, Types::MovieType, null: false
    field :session, Types::SessionType, null: false
    field :seat, Types::SeatType, null: false

    def movie
      object.session.movie
    end
  end
end
