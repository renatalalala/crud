get '/' do
	@notes = Note.all
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  Note.create(params)
  redirect '/'
end

get '/update/:id' do |note_id|
	@note = Note.find(note_id)
	erb :update
end

post '/update/:id' do |note_id|
	@note = Note.find(note_id)
	@note.update_attributes(title: params[:title], content: params[:content])
	@note.save
	redirect '/'
end

# delete '/note/:id' do
# end
