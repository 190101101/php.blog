<form class="card mb-4" action="/panel/faq/create" method="POST">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>create</span>
            </div>
            <div class="col-md-2">
                <button class="btn btn-sm btn-success" type="submit">create</button>
                <a class="btn btn-sm btn-success" href="/panel/article/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>created</label>
                    <input name="faq_created" class="form-control" value="<?php echo date('Y-m-d H:i:s'); ?>" required>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>text</label>
                    <textarea name="faq_text" class="form-control" rows="5" required></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <label>sub text</label>
                    <textarea name="faq_subtext" class="form-control" rows="5" required></textarea>
                </div>
            </div>
        </div>
    </div>
</form>
