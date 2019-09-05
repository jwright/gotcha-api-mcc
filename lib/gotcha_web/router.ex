defmodule GotchaWeb.Router do
  use GotchaWeb, :router

  scope "/" do
    forward "/graphql", Absinthe.Plug,
      schema: GotchaWeb.GraphQL.Schema,
      json_codec: Phoenix.json_library()

    forward(
      "/graphiql",
      Absinthe.Plug.GraphiQL,
      schema: GotchaWeb.GraphQL.Schema,
      json_codec: Phoenix.json_library()
    )
  end
end
