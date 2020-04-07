require 'rails_helper'

RSpec.describe User, type: :model do
  
  subject { 
    described_class.new(password: "some_password",
                        password_confirmation: "some_password", 
                        email: "john@doe.com",
                        name: "John Doe"
    )  
    }

      describe "Validations" do
      it "is valid with valid attributes" do
      expect(subject).to be_valid
      end

      it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
      end

      it "is not valid without the password being confirmed" do
        subject.password_confirmation = nil
        expect(subject).to_not be_valid
        end

      it "is not valid if passwords dont match" do
        subject.password = "asma"
        expect(subject).to_not be_valid
      end

      it "is not valid if password is less than 8 characters" do
        subject.password = "asma"
        subject.password_confirmation ="not asma"
        expect(subject).to_not be_valid
      end

      it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
      end

      it "emails must be unique" do
        user_new= User.create(password: "some_password",
        password_confirmation: "some_password", 
        email: "john@doe.com",
        name: "John Doe"
        )   
        user_new1= User.create(password: "some_password",
        password_confirmation: "some_password", 
        email: "john@doe.com",
        name: "John Doe"
        )      
        expect(user_new1).to_not be_valid
      end

      it "emails are not case sensitive" do
        user_new= User.create(password: "some_password",
        password_confirmation: "some_password", 
        email: "john@doe.com",
        name: "John Doe"
        )   
        user_new1= User.create(password: "some_password",
        password_confirmation: "some_password", 
        email: "joHN@doe.com",
        name: "John Doe"
        )    
        expect(user_new1).to_not be_valid
      end

      it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid
      end
    end


    describe '.authenticate_with_credentials' do
      # examples for this class method here

         it "signs user in and out" do
            user = User.create(name: "asma", email: "user@example.org", password: "very-secret", password_confirmation: "very-secret")
            user1 = User.authenticate_with_credentials("user@example.org","very-secret")
            expect(user1).to be_truthy
         end

      end

end
