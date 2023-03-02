class ReviewsController < ApplicationController

    #Routing

    #Getting Reviews

    get "/reviews" do
        reviews = Review.all
        reviews.to_json
    end

    # Post/Add Reviews

    post "/reviews" do
        review = params[:review]
        book = params[:book]
        user = params[:user]

        if(review.present? && book.present? && user.present?)
            review = Review.create(review: review, book_id: book, user_id: user)
            if review
                message = {:succcess => "Review created successfully!!"}
                message.to_json
            else
                message = {:error => "Error saving comment!"}
                message.to_json
            end
        else
            message = {:error => "All fields should be field!"}
            message.to_json
        end
    end

    #Delete Review

    delete "/reviews/:id" do
        count_reviews = Review.where(id: params[:id]).count() #Integer 2,3,4,5
        if count_reviews>0
            review = Review.find(params[:id])
            review.destroy
            message = {:succcess => "Review deleted successfully!!"}
            message.to_json

        else
            message = {:error => "Review does not exist!"}
            message.to_json
        end
    end
end