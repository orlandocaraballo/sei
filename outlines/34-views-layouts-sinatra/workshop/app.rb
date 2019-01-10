require "sinatra"
require "googlebooks"

get "/" do
  # loading /views/form.erb template into the html variable
  html = erb(:form)

  # if there is a search term
  #   from the /views/form.erb page
  if params[:search]
    search_term = params[:search]

    @books = GoogleBooks.search(search_term)

    # load html from results and add it to
    #   html from /views/form.erb
    html += erb(:results, layout: false)
  end

  html
end