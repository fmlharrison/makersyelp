module RestaurantWorld
  def add_restaurant(name, description, blurb, postcode)
    Restaurant.create(name: name,
                      description: description,
                      blurb: blurb,
                      postcode: postcode)
  end

  def fill_in_restaurant_form(name, description, blurb, postcode)
    fill_in("restaurant[name]", with: name)
    fill_in("restaurant[description]", with: description)
    fill_in("restaurant[blurb]", with: blurb)
    fill_in("restaurant[postcode]", with: postcode)
  end

  def see_restaurant_details(name, description, blurb, postcode)
    expect(page).to have_content(name)
    expect(page).to have_content(description)
    expect(page).to have_content(blurb)
    expect(page).to have_content(postcode)
  end

  def fill_in_review_form(rating, comment)
    fill_in("review[rating]", with: rating)
    fill_in("review[comment]", with: comment)
  end

  def user_sign_up(email, password)
    fill_in("user[email]", with: email)
    fill_in("user[password]", with: password)
    fill_in('user[password_confirmation]', with: password)
  end

  def user_sign_in(email, password)
    fill_in("user[email]", with: email)
    fill_in("user[password]", with: password)
  end
end

World(RestaurantWorld)
