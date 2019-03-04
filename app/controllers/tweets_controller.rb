class TweetsController < ApplicationController
  def index
    #Orderで並べ替え
   @tweets = Tweet.all.order("id DESC")
 end

 def new
    @tweet = Tweet.new
 end

 def create
  @tweet = Tweet.new(tweet_params)

  #新しいTweetの保存に成功した場合
  if @tweet.save
    #index.html.erbにページが移る
    redirect_to action: "index"
  #新しいTweetの保存に失敗した場合
  else
    #もう一回投稿画面へ
    redirect_to action: "new"
  end
 end

 def destroy
   Tweet.find(params[:id]).destroy
   redirect_to action: :index
 end


 def show
    @tweet = Tweet.find(params[:id])
 end

 def edit
    @tweet = Tweet.find(params[:id])
 end

  def update
      @tweet = Tweet.find(params[:id])
      if @tweet.update(tweet_params)
        redirect_to :action => "show", :id => @tweet.id
      else
        redirect_to :action => "new"
      end
    end
    private
    
    def tweet_params
      params.require(:tweet).permit(:body)
    end

end
