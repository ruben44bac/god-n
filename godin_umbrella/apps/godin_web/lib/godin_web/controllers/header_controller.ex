defmodule GodinWeb.HeaderController do
    use GodinWeb, :controller


    def index(conn, _params) do
        render(conn, "index.html")
    end

end