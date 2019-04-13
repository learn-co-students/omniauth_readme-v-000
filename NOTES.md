Worked through sqlite issue by following advice at <https://superuser.com/questions/1406510/rails-server-gem-load-error-sqlite3>:

```Ah, looks like it’s an issue with the sqlite3 v1.4.0 gem which was released on February 4. There’s a fix in the works:

https://github.com/rails/rails/issues/35153

In the meantime, you can fall back to v1.3.6 by adding that version to the “sqlite3” line in your Gemfile, like so:

gem "sqlite3", "~> 1.3.6”

Then make sure to “bundle install”.```

