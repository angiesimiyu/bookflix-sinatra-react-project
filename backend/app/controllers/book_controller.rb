class BooksController < ApplicationController
    #Routing
    #Getting books

    get "/books" do
        books = Book.all
        books.to_json
    end

    #Posting books
    post "/books" do
        title = params[:title]
        author = params[:author]
        genre = params[:genre]
        description = params [:description]

        if(title.present? && author.present? && genre.present? && description.present?)
            post = Book.create(title: title, author: author, genre: genre, description: description)
            if post
                message = {:succcess => "Book added successfully!!"}
                message.to_json
            else
                message = {:error => "Error saving book!"}
                message.to_json
            end
        else
            message = {:error => "All fields should be field!"}
            message.to_json
        end
    end
end