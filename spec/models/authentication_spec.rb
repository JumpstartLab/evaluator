require 'spec_helper'

describe Authentication do
  describe ".person" do
    context "when the person has authenticated previously" do
      let!(:auth)   { Factory(:authentication, provider: 'github', uid: 'abc123') }
      let(:person)  { auth.person }

      it "finds that person by provider credentials" do
        creds = {'provider' => 'github', 'uid' => 'abc123'}
        Authentication.person(creds).should == person
      end
    end

    context "when the person has never authenticated" do
      let(:creds) do
        {'provider' => 'github', 'uid' => 'abc123', 'info' => {'name' => 'Octo Cat'}}
      end

      it "creates a person record for them using info" do
        expect { Authentication.person(creds) }.to change { Person.count }.by(1)
      end

      it "creates an auth record for future logins" do
        expect do
          Authentication.person(creds)
          Authentication.person(creds)
        end.to change { Person.count }.by(1)
      end

      describe "creating the person record" do
        subject do
          creds['info'] = {'name' => 'Octo Cat', 'nickname' => 'octocat', 'email' => 'octocat@hungryacademy.com'}
          Authentication.person(creds)
        end

        its(:first_name)    { should == 'Octo' }
        its(:last_name)     { should == 'Cat' }
        its(:email)         { should == 'octocat@hungryacademy.com' }
        its(:github_handle) { should == 'octocat' }
      end
    end
  end
end
