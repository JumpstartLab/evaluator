project_evaluation "Peer Review for SonOfStoreEngine" do
  section 'Checkout Workflow' do
    free_response "Visitor checking out signs up while purchasing (1)", :kind => :integer
    free_response "Visitor checking out signs in while purchasing (2)", :kind => :integer
    free_response "Visitor checking out purchases without signing up (2)", :kind => :integer
  end

  section 'Store Creation & Acceptance' do
    free_response "StoreEngine user creates new store (2)", :kind => :integer
    free_response "StoreEngine administrator views list of all stores (2)", :kind => :integer
    free_response "StoreEngine administrator approves a new store (2)", :kind => :integer
    free_response "StoreEngine administrator declines a new store (2)", :kind => :integer
    free_response "StoreEngine administrator disables store (2)", :kind => :integer
    free_response "StoreEngine administrator enables store (1)", :kind => :integer
  end

  section 'Shopping' do
    free_response "Shopper visits an individual store at its unique URL (3)", :kind => :integer
    free_response "StoreEngine visitor creates new account (2)", :kind => :integer    
    free_response "Logged in user visits multiple stores (2)", :kind => :integer
  end
  
  section 'Store Administration' do  
    free_response "Store administrator edits and updates a store's details (2)", :kind => :integer
    free_response "Store administrator works with products as in StoreEngine (2)", :kind => :integer
  end

  section 'Store Admin Management' do
    free_response "Store administrator adds new store admin (2)", :kind => :integer
    free_response "Store admin removes another admin (2)", :kind => :integer
    free_response "StoreEngine administrator acts as a store admin (2)", :kind => :integer
  end

  section 'Stockers' do
    free_response "Store administrator adds new stocker (3)", :kind => :integer
    free_response "Store Stocker works with products like a store admin (2)", :kind => :integer
    free_response "Store admin removes stocker (2)", :kind => :integer
  end
  
  section 'Extensions' do
    free_response "Custom CSS Per store (3)", :kind => :integer
    free_response "Use sub-domains to distinguish stores (3)", :kind => :integer
    free_response "Separate sign-in per store (3)", :kind => :integer
    free_response "Provision and deploy on a blank VPS (3)", :kind => :integer
  end

  section 'Non-functional Metrics' do
    free_response "Performance Under Load (5)", :kind => :integer
    free_response "User Interface & Design (4)", :kind => :integer
    free_response "Test Coverage (2)", :kind => :integer
    free_response "Code Style (2)", :kind => :integer
  end
end