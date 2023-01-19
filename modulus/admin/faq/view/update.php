<?php $faq = $data->faq; ?>
<form class="card mb-4" action="/panel/faq/update" method="POST">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>update</span>
            </div>
            <div class="col-md-2">
                <button class="btn btn-sm btn-success" type="submit">update</button>
                <a class="btn btn-sm btn-success" href="/panel/faq/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>id</label>
                    <input name="faq_id" class="form-control" value="<?php echo $faq->faq_id; ?>" readonly required>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>created</label>
                    <input name="faq_created" class="form-control" value="<?php echo $faq->faq_created; ?>" readonly required>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>updated</label>
                    <input class="form-control" value="<?php echo $faq->faq_updated; ?>" readonly required>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>text</label>
                    <textarea name="faq_text" class="form-control" rows="5" minlength="10" maxlength="1000" required><?php echo $faq->faq_text; ?></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>sub text</label>
                    <textarea name="faq_subtext" class="form-control" rows="5" minlength="10" maxlength="1000" required><?php echo $faq->faq_subtext; ?></textarea>
                </div>
            </div>
        </div>
    </div>
</form>
