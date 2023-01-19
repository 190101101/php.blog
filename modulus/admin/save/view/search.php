<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>search</span>
            </div>      
            <?php page_data($data->page); ?>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-media table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>title</th>
                    <th>login</th>
                    <th>created</th>
                    <th>show</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>title</td>
                    <td>login</td>
                    <td>created</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->save as $save): ?>
                <tr>
                    <td><?php echo $save->save_id; ?></td>
                    <td>
                        <a href="/article/id/<?php echo $save->article_id; ?>">
                            #<?php echo $save->article_title; ?>
                        </a>
                    </td>
                    <td>
                        <a href="/panel/save/user/<?php echo $save->user_id; ?>/page/1" class="text-danger">
                            @<?php echo $save->user_login; ?>
                        </a>
                    </td>
                    <td><?php echo date_ymd($save->save_created); ?></td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/save/show/<?php echo $save->save_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-warning"
                        href="/panel/save/update/<?php echo $save->save_id; ?>">update</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/save/delete/<?php echo $save->save_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, breadcump_search()); ?>
        </ul>
    </div>
</div>