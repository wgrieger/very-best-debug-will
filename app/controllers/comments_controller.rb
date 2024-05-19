class CommentsController < ApplicationController
  def create
    comment= Comment.new
    comment.author_id = params.fetch("query_author_id").to_i
    comment.venue_id = params.fetch("query_venue_id").to_i
    comment.body = params.fetch("query_body").to_s

    comment.save
    
    redirect_to("/venues/#{comment.venue_id}")
  end
end
