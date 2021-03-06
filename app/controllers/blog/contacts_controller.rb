module Blog
  
  class ContactsController < BlogController
    def new
      @contact = Contact.new
    end
      def create
        @contact = Contact.new(contact_params)
        if @contact.save
          name = params[:contact][:name]
          email = params[:contact][:email]
          nachricht = params[:contact][:nachricht]
          ContactMailer.contact_email(name, email, nachricht).deliver
           flash[:success] = "Nachricht gesendet."
           redirect_to new_contact_path
        else
           flash[:danger] = @contact.errors.full_messages.join(", ")
           redirect_to new_contact_path
        end
      end
      
      private
        def contact_params
           params.require(:contact).permit(:name, :email, :nachricht)
        end
    
  end
end