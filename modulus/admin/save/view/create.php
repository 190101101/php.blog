<?php panel_breadcrumb($data->column, '/panel/save/search/title/value'); ?>
<div class="row">
    <?php $main = new core\controller; ?>
    <?php $main->view('admin', 'requires', 'admin/sidebar', []); ?>  
    <div class="col-lg-9">
        <form action="/panel/save/create" method="POST">
            <div class="row">
                <div class="col-md-10">
                    <h2>save create</h2>
                </div>
                <div class="col-md-2">
                    <button class="btn btn-sm btn-success" type="submit">create</button>
                    <a class="btn btn-sm btn-success" href="/panel/save/page/1">back</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>user</label>
                        <input name="user_id" class="form-control" placeholder="user id" required>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="form-group">
                        <label>article</label>
                        <input name="article_id" class="form-control" placeholder="article id" required>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>