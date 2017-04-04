require 'sinatra/base'
require_relative 'models/link'


class BM < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  get'/links/new' do
    erb :'links/new_link'
  end

end
