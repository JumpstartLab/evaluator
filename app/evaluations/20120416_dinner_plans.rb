evaluation "Dinner Plan for 4/12/12" do
  section "You" do
    description "Ordering pizza from [Upper Crust Pizza](http://theuppercrustpizzeria.com/locations-washingtondc.php)"
    pick_one "Are you coming to dinner tonight?" do
      option "Yes"
      option "No"
    end
    free_response "Any specific requests?", kind: :text
  end
end
