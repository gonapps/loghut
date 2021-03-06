<!DOCTYPE html>
<html>
    <head>
        <title>${post.title} - My Blog</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,user-scalable=yes"/>
        <meta name="keywords" content="<#list post.tags as tag>${tag.name}<#sep>,</#sep></#list>"/>
        <script src="https://code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <style>*{word-wrap:break-word;max-width:100%}</style>
    </head>
    <body>
        <div class="container">
            <header class="page-header text-center">
                <h1>
                    <a href="${settings.getSetting('blog.url')}">My Blog</a>
                </h1>
            </header>
            <main class="panel panel-default">
                <div id="loghut-post-title" class="panel-heading text-center">
                    <h4>${post.title}</h4>
                </div>
                <article id="loghut-post-text" class="panel-body">
                    ${post.text}
                </article>
                <div class="panel-footer">
                    <span>
                    <strong>Tags:(</strong>
                    <#list post.tags as tag>
                    <a class="loghut-post-tag label label-default" href="${settings.getSetting('tags.url')}${tag.path}">
                    ${tag.name}
                    </a>
                    &nbsp;
                    </#list>
                    </span>
                    <strong>)</strong>
                    <div>
                        <a class="btn btn-default" href="${settings.getSetting('admin.url')}/creation_form.do">
                            <span class="glyphicon glyphicon-pencil"></span> create
                        </a>
                        <a class="btn btn-default" href="${settings.getSetting('admin.url')}${post.modificationFormPath}">
                            <span class="glyphicon glyphicon-erase"></span> modify
                        </a>
                        <a id="post-delete" class="btn btn-default" href="${settings.getSetting('admin.url')}${post.deletePath}">
                            <span class="glyphicon glyphicon-trash"></span> delete
                        </a>
                        <script type="text/javascript">
                            document.getElementById("post-delete").addEventListener("click", function(event) {
                                if(confirm("Do you really want to delete this post?") == false)
                                    event.preventDefault();
                            });
                        </script>
                    </div>
                </div>
            </main>
            <footer class="panel panel-default">
                <ul class="nav nav-pills">
                    <li>
                        <a href="${settings.getSetting('admin.url')}">
                            <span class="glyphicon glyphicon-user"></span> Admin
                        </a>
                    </li>
                    <li>
                        <a href="${settings.getSetting('posts.url')}">
                            <span class="glyphicon glyphicon-folder-open"></span> Archive
                        </a>
                    </li>
                    <li>
                        <a href="${settings.getSetting('tags.url')}">
                            <span class="glyphicon glyphicon-tags"></span> Tags
                        </a>
                    </li>
                </ul>
                <ul class="nav nav-pills">
                    <li>
                        <a href="${settings.getSetting('blog.url')}">
                            <span class="glyphicon glyphicon-home"></span> Home
                        </a>
                    </li>
                </ul>
            </footer>
        </div>
    </body>
</html>
