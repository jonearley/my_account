# My Account 
My Account for Alma


## Setting up My Account for development

Clone the repo
```
git clone git@github.com:mlibrary/my_account.git
cd my_account
```

copy .env-example directory to .env
```
cp -r .env-example .env
```
edit .env/development/web with Alma Credentials

```ruby
#.env/development/web
ALMA_API_KEY='YOURAPIKEY'
ALMA_API_HOST='https://api-na.hosted.exlibrisgroup.com'
```	

build web container
```
docker-compose build web
```

bundle install 
```
docker-compose run web bundle install
```

start containers
```
docker-compose up -d
```
In a browser, go to http://localhost:4567 to see "Hello World"

