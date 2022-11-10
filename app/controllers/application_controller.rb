class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"
    # allow access-control-allow-origin header on all requests
    before do
        response.headers["Access-Control-Allow-Origin"] = "*"
    end
    # enable CORS preflight requests
    options "*" do
        response.headers["Access-Control-Allow-Methods"] = "GET, POST, PUT, PATCH, DELETE, OPTIONS"
    end
    get '/' do
        {hello: "Just doing the coding :smiley:"}.to_json
    end
   #get all users
   get '/users' do
    User.all.to_json
   end
   # dynamic route
   get '/user/:id' do
    User.find(params[:id]).to_json
end
#crud operations
#post
post '/user' do
    user = User.create(
        name: params[:name],
        email: params[:email],
        password: params[:password],
    )
    user.to_json
end
# read
get '/users' do
    User.all.to_json(include: :review)
end
# get one user
get '/user/:id' do
    User.find(params[:id]).to_json(include: :review)
end
# update
patch '/user/:id' do
    user = User.find(params[:id])
    user.update(
        name: params[:name],
        email: params[:email],
        password: params[:password],
    )
    {message: "User has been updated!"}.to_json
end
# delete
delete '/user/:id' do
    user = User.find(params[:id])
    user.destroy
    {message: "User '#{user.id}' has been deleted."}.to_json
end
# get all destinations
    get '/destinations' do
        Destination.all.to_json
    end
    # get one destination
    get '/destination/:id' do
        Destination.find(params[:id]).to_json
    end
    # #get all users
    # get '/users' do
    #     User.all.to_json
    # end
    # # get one destinatio
    # get '/user/:id' do
    #     User.find(params[:id]).to_json
    # end
    # crud for Destinations ==================================
    # create
    post '/destinations' do
        destination = Destination.create(
            place: params[:place],
            image: params[:image],
            event: params[:event],
            date: params[:date],
            time: params[:time]
            #status: false
        )
        destination.to_json
    end
    # read
    get '/destinations' do
        Destination.all.to_json(include: :review)
    end
    # get one destination
    get '/destination/:id' do
        Destination.find(params[:id]).to_json(include: :review)
    end
    # update
    patch '/destination/:id' do
        destination = Destination.find(params[:id])
        destination.update(
            place: params[:place],
            image: params[:image],
            event: params[:event],
            date: params[:date],
            time: params[:time]
            #status: false
        )
        {message: "Destination!"}.to_json
    end
    # delete
    delete '/destination/:id' do
        destination = Destination.find(params[:id])
        destination.destroy
        {message: "Destination '#{destination.id}' has been deleted."}.to_json
    end
    post '/review' do
       review= Review.create(
            star_ratings: params[:star_ratings],
            comment: params[:comment],
            destination_id: params[:destination_id],
            user_id: params[:user_id]
        )
        review.to_json
    end
#post review
    post '/review' do
        review= Review.create(
             star_ratings: params[:star_ratings],
             comment: params[:comment],
             destination_id: params[:destination_id],
             user_id: params[:user_id]
         )
         review.to_json
     end
#patch review
     patch '/review' do
        review = Review.find(params[:id])
        review.update(
            star_ratings: params[:star_ratings],
            comment: params[:comment],
            destination_id: params[:destination_id],
            user_id: params[:user_id]
         )
         review.to_json
     end
     # delete
delete '/review/:id' do
    review = Review.find(params[:id])
    review.destroy
    {message: "User '#{review.id}' has been deleted."}.to_json
end
    # abit of advanced stuffs huhh :sunglasses: ===============================
    # get all destinations reviews
    # get all reviews
    get '/reviews' do
        Review.all.to_json
    end
    # get one review
    get '/review/:id' do
        Review.find(params[:id]).to_json
    end
    get '/review/:id/destinations' do
        Review.find(params[:id]).destinations.to_json(include: :review)
    end
    # # get all reviews of a destination that are not completed
    # get '/review/:id/destionations/active' do
    #     Review.find(params[:id]).destinations.where(status: false).to_json(include: :review)
    # end
    # # get all reviews of a destination that are completed
    # get '/review/:id/destinations/completed' do
    #     Review.find(params[:id]).destinations.where(status: true).to_json(include: :review)
    # end
end