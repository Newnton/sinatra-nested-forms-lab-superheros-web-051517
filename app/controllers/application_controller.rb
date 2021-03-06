require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post "/teams" do
      params[:team][:heroes].each do |hero|
        Hero.new(hero)
      end
      @team = Team.new(params[:team], Hero.all)
      erb :team
    end
end
