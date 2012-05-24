project_evaluation "Peer Review for FeedEngine" do
  section "Accounts and Signing Up" do
    free_response "Sign up for an account (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "Edit my account (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "Visitor requests password reset (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Posting Messages" do
    free_response "User posts a text message (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "User posts a link message (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "User posts an image message (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Viewing Feeds and Items" do
    free_response "Viewing the paginated list of messages (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "View feed of my messages at subdomain (1)",  :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "Visitor views feed of messages (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Linking Accounts" do
    free_response "User links Twitter account during signup (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "User links GitHub account during signup (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "User links Instagram account during signup (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "User removes linked account from dashboard (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "User links service account from dashboard (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Importing Linked Account Items" do
    free_response "Linking Twitter account imports public tweets (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "Linking GitHub account imports user's events (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "Linking Instagram account imports public images (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Refeeding" do
    free_response "User refeeds an item from another feed (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "User refeeds another feed (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "User stops refeeding another feed (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "API - Use the gem and console to verify these stories" do
    free_response "API user reads a feed (3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "API user creates a text, link, or image item (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "API calls require access token (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "API user refeeds another feed (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Points!" do
    free_response "Logged in user gives points to a feed item (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
    free_response "Visitor gives points to a feed item (1)", :kind => :integer, :group => :overall_score, :range => (0..1)
  end

  section "Extensions (optional - leave as 0 if unused)" do
    free_response "Extension 1 (1-3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "Extension 2 (1-3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "Extension 3 (1-3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "Extension 4 (1-3)", :kind => :integer, :group => :overall_score, :range => (0..3)
    free_response "Extension 5 (1-3)", :kind => :integer, :group => :overall_score, :range => (0..3)
  end

  section "Non-functional Metrics" do
    free_response "Performance Under Load (4)", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "User Interface & Design (4)", :kind => :integer, :group => :overall_score, :range => (0..4)
    free_response "Test Coverage (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
    free_response "Code Style (2)", :kind => :integer, :group => :overall_score, :range => (0..2)
  end
end
