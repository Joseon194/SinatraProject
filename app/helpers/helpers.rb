class Helpers

     def self.current_user(session)
         @user = User.find_by_id(session[:email])
         if @user.is_a?(User)
             @user
         end
     end

     def self.is_signed_in?(session)
         !!User.find_by_id(session[:email])
     end
 end
