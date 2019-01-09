require "sinatra"

{
  name: "orlando",
  locals: 
}

get "/" do
  groceries = %w{cereal bread milk eggs }

  erb(:index, {
    locals: { 
      groceries: groceries,
      name: "aron"
    }
  })
end