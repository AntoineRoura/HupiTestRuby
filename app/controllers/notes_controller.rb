##
# Note Controller
#
# to delete a note : login = admin , password = password
class NotesController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show]

    def create
        @article = Article.find(params[:article_id])
        @note = @article.notes.create(note_params)
        redirect_to article_path(@article)
      end
    
      def destroy
        @article = Article.find(params[:article_id])
        @note = @article.notes.find(params[:id])
        @note.destroy
        redirect_to article_path(@article), status: 303
      end
    
      private
        def note_params
          params.require(:note).permit(:score)
        end
end
