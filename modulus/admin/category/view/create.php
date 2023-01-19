<form class="card mb-4" action="/panel/category/create" method="POST">
    <div class="card-header">
        <div class="row">
            <div class="col-md-10">
                <i class="fas fa-table me-1"></i>
                <span>create</span>
            </div>
            <div class="col-md-2">
                <button class="btn btn-sm btn-success" type="submit">create</button>
                <a class="btn btn-sm btn-success" href="/panel/category/page/1">back</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label>title</label>
                    <input name="category_title" class="form-control" type="text" minlength="3" maxlength="20" placeholder="title" required>
                </div>

                <div class="form-group">
                    <label>category text</label>
                    <textarea name="category_text" rows="5" minlength="3" maxlength="200" type="text" class="form-control" placeholder="category text" required id="editor1"></textarea>
                    <script>CKEDITOR.replace('editor1')</script>
                </div>
                
                <div class="form-group">
                    <label>section</label>
                    <select class="form-control" name="section_id" required>
                        <?php foreach($data->section as $section): ?>
                        <option value="<?php echo $section->section_id; ?>">
                            <?php echo $section->section_title; ?>
                        </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
        </div>
    </div>
</form>


