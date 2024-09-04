FROM elixir:latest

RUN mkdir /app
COPY . /app
WORKDIR /app

# Install hex pm
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix do compile

CMD ["/app/entrypoint.sh"]
