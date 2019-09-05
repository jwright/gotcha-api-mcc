defmodule Gotcha.ArenaFactory do
  defmacro __using__(_opts) do
    quote do
      alias Gotcha.Arena

      def arena_factory do
        %Arena{
          location_name: Faker.Company.name(),
          street_address1: Faker.Address.street_address(),
          city: Faker.Address.city(),
          state: Faker.Address.state_abbr(),
          zip_code: Faker.Address.zip_code(),
          latitude: Faker.Address.latitude(),
          longitude: Faker.Address.longitude()
        }
      end
    end
  end
end
