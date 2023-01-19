<?php $save = $data->save; ?>
<form class="card mb-4" action="/panel/save/update" method="POST">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>update</span>
            </div>
            <div class="col-md-2">
                <button class="btn btn-sm btn-success" type="submit">update</button>
                <a class="btn btn-sm btn-success" href="/panel/save/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>id</label>
                    <input name="save_id" class="form-control" value="<?php echo $save->save_id; ?>"  required>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>user</label>
                    <input name="user_id" class="form-control" value="<?php echo $save->user_id; ?>"  required>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>save</label>
                    <input name="save_id" class="form-control" value="<?php echo $save->save_id; ?>"  required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>created</label>
                    <input type="text" class="form-control" value="<?php echo $save->save_created; ?>" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>updated</label>
                    <input type="text" class="form-control" value="<?php echo date('Y-m-d H:i:s'); ?>" required>
                </div>
            </div>
        </div>
    </div>
</form>
