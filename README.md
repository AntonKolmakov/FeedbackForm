This application has a simple functionality. The user can add a question and leave a feedback so that the administrator can see what the question is and answer it by email.

You can find this app by clicking on the link. [feedbackform-user.herokuapp.com](https://feedbackform-user.herokuapp.com)
Leave a feedback or question. After that you can go to the admin panel with email: admin@admin.com and password: secret.
The administrator can see all unanswered questions and answer them by e-mail.

For background job you should run:
```
redis-server /usr/local/etc/redis.conf

bundle exec sidekiq
```
