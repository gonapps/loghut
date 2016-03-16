
<html lang="en-US">
    <head>
        <title>Admin Page</title>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,user-scalable=yes"/>
        <script src="//code.jquery.com/jquery.min.js" type="text/javascript"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    </head>
    <body class="container panel">
        <div>
            <a href="http://github.com/gonapps/loghut" style="background-color:lightgrey;display:block">
                <img src="http://i.imgur.com/jJH0lza.png" style="display:inline-block;vertical-align:middle;width:3rem;height:3rem"/>
                Powered by LogHut
            </a>
            <h1>
                <a href="${settings.getSetting('admin.url')}">Admin Page</a>
            </h1>
        </div>
        <ul class="nav nav-pills">
        <li><a href="${settings.getSetting('blog.url')}">Blog Home</a></li>
        <li><a href="${settings.getSetting('admin.url')}/creation_form.do">New Post</a></li>
        <li><a href="${settings.getSetting('admin.url')}/backup.do">Download Backup</a></li>
        <li><a href="${settings.getSetting('admin.url')}/refresh_all.do">Refresh All Posts</a></li>
        <li><a href="${settings.getSetting('admin.url')}/logout.do">Logout</a></li>
        </ul>
        <hr>
        <script type="text/javascript">
            document.addEventListener("change", function(event) {
                if(event.target.id = "search_filter_select") {
                    document
                    .getElementById("search_filter")
                    .setAttribute("name",
                        event.target.options[event.target.selectedIndex].value); 
                }
            });
        </script>
        <form id="search_form" class="form-group" class="" action="${settings.getSetting('admin.url')}/search.do" method="get">
            <input type="hidden" name="action" value="search"/>
            <input type="hidden" name="page_unit" value="10"/>
            <input type="hidden" name="page" value="1"/>
            <div class="row">
                <div class="col-md-2"> 
                    <select id="search_filter_select" class="form-control" form="search_form">
                        <option value="title">Title</option>
                        <option value="tag_names">TagNames</option>
                        <option value="years">Years</option>
                        <option value="months">Months</option>
                        <option value="months">Days</option>
                    </select>
                </div>
                <div class="col-md-5">
                    <input id="search_filter" class="col-md-6 form-control" type="text" name="title"/>
                </div>
                <div class="col-md-5">
                    <input class="btn btn-default" type="submit" value="Search"/>
                </div>
            </div>
        </form>
        <hr/>