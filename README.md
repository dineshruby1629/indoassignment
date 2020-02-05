Ruby 2.6.0

1. bundle install
2. Run migrations - rails db:migrate
3. API for user signup - POST api/v1/users/signup [params - name, user_name, password, email]
4. API for user login - POST api/v1/users/login [params - email, password]
5. API to list tweets from users one follows - GET api/v1/tweets/
6. API to get User profile - GET api/v1/users/user_id
7. API to allow following - POST api/v1/relations/ [params - user_id]
8. API to allow unfollowing - DELETE api/v1/relations/ [params - user_id]
9. GET all the tweets from the user - user.tweets 
10. GET all the followers of the user - user.followers
11. Added validations for Username/Password incorrect and when someone tries to follow a followed user
