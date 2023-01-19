<?php $rule = $data->rule; ?>
<form class="card mb-4" action="/panel/rule/update" method="POST">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>update</span>
            </div>
            <div class="col-md-2">
                <button class="btn btn-sm btn-success" type="submit">update</button>
                <a class="btn btn-sm btn-success" href="/panel/rule/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label>id</label>
                    <input name="rule_id" class="form-control" value="<?php echo $rule->rule_id; ?>" readonly required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label>created</label>
                    <input name="rule_created" class="form-control" value="<?php echo $rule->rule_created; ?>" readonly required>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>text</label>
                    <textarea name="rule_text" class="form-control" rows="5" minlength="10" maxlength="1000" required><?php echo $rule->rule_text; ?></textarea>
                </div>
            </div>
        </div>
    </div>
</form>
