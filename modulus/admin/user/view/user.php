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
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>login</th>
                    <th>email</th>
                    <th>status</th>
                    <th>show</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>login</td>
                    <td>email</td>
                    <td>status</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->user as $user): ?>
                <tr>
                    <td><?php echo $user->user_id; ?></td>
                    <td>
                        <a href="/panel/save/user/<?php echo $user->user_id; ?>/page/1">
                            @<?php echo $user->user_login; ?>
                        </a>
                    </td>
                    <td><?php echo $user->user_email; ?></td>
                    <td>
                        <label class="switch">
                        <input type="checkbox" class="data-get" 
                            data-get="/panel/user/status/<?php echo $user->user_id; ?>" 
                            <?php echo $user->user_status == 1 ? 'checked' : NULL; ?> > 
                        <span class="slider round"></span>
                        </label>
                    </td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/user/show/<?php echo $user->user_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-warning"
                        href="/panel/user/update/<?php echo $user->user_id; ?>">update</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/user/delete/<?php echo $user->user_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, 'panel/user/'); ?>
        </ul>
    </div>
</div>