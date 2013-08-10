# Movable Type Data API Sample ToDo Application

## ABOUT

This is a sample todo application of Movable Type Data API.

I was rewrote sample application for  the movable type data api from following article sample application.

- [Building Apps With the Yeoman Workflow](http://net.tutsplus.com/tutorials/javascript-ajax/building-apps-with-the-yeoman-workflow/)
  - http://net.tutsplus.com/tutorials/javascript-ajax/building-apps-with-the-yeoman-workflow/

If you want create application from scratch, please reference to this great article.

## SETUP

Install and setup [MT6](http://www.movabletype.org/beta/60/index.html), then

```shell
# install npm modules.
$ npm install
# instal bower components.
$ bower install
# build project
$ grunt build
# move directory to mt-static
$ mv mt-data-api-todo-sample /path/to/mt-static/MT6ToDo 
# run mt with psgi
$ cd /path/to/mt/
$ plackup mt.psgi
```
running application at http://localhost:5000/mt-static/MT6ToDo/index.html

## SEE ALSO
This sample ToDo application was in reference to the following:

Webpage: http://net.tutsplus.com/tutorials/javascript-ajax/building-apps-with-the-yeoman-workflow/
Github: https://github.com/addyosmani/yeoman-examples/tree/master/backbone-localStorage-todos
