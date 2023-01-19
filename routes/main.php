<?php 

use core\app;
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_]+)
// ([0-9a-zA-Z-_\?\=\&\+]+)
// ([0-9]+)

/*home*/
app::get('/', '/home/index', 'main');
app::get('/home/page/([0-9]+)', '/home/index', 'main');
app::get('/mode/([0-9]+)', '/home/mode/([0-9]+)', 'main');
app::get('/lang/([0-9a-zA-Z-_]+)', '/home/lang/([0-9a-zA-Z-_]+)', 'main');

/*article*/
app::get('/article/page/([0-9]+)', '/article/article', 'main');
app::get('/article/id/([0-9]+)', '/article/articleById/([0-9]+)', 'main');
app::get('/article/category/([0-9]+)/page/([0-9]+)', '/article/ByCategory/([0-9]+)', 'main');

app::get('/article/search/key/(.*?)', '/article/ArticleSearchEngine', 'main', ['Auth']);
app::get('/article/search/data/([0-9a-zA-Z-_\?\=\&\+]+)/page/([0-9]+)', 
	'/article/ArticleSearch/([0-9a-zA-Z-_\?\=\&\+]+)', 'main');


/*category*/
app::get('/category/page/([0-9]+)', '/category/category', 'main');

/*other*/
app::get('/info/about', '/info/AboutPage', 'main', ['Page']);
app::get('/info/rule/page/([0-9]+)', '/info/RulePage', 'main', ['Page']);
app::get('/info/faq/page/([0-9]+)', '/info/FaqPage', 'main', ['Page']);

/*auth*/
app::get('/auth', '/auth/AuthPage', 'main', ['Authless']);
app::post('/signup', '/auth/SignUp', 'main', ['Authless']);
app::post('/signin', '/auth/SignIn', 'main', ['Authless']);
app::get('/signout', '/auth/SignOut', 'main', ['Auth']);

/*error*/
app::get('/404', '/error/PageNotFound', 'main');
app::get('/error/type/([0-9a-zA-Z-_]+)', '/error/errorType/([0-9a-zA-Z-_]+)', 'main');

/*dd*/
app::get('/dd', '/dd/dd', 'main');
app::post('/dd', '/dd/create', 'main');


