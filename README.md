Ruby 2.6.0

1. bundle install
2. Run migrations - rails db:migrate
3. API to list tweets from users one follows - GET api/v1/tweets/
4. API to get User profile - GET api/v1/users/user_id
5. API to allow following - POST api/v1/relations/ [params - user_id]
6. API to allow unfollowing - DELETE api/v1/relations/ [params - user_id]
7. GET all the tweets from the user - user.tweets 
8. GET all the followers of the user - user.followers
9. Added validations for Username/Password incorrect and when someone tries to follow a followed user
