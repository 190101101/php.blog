<form class="card mb-4" action="/panel/article/create" method="POST">
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
                    <label>title</label>
                    <input name="article_title" class="form-control" type="text" minlength="3" maxlength="100" 
                        <?php if(old::article_title()): ?>
                        value="<?php echo old::article_title(); ?>" 
                        <?php else: ?>
                        placeholder="article title" 
                        <?php endif; ?>>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>keyword</label>
                    <input name="article_keyword[]" multiple class="form-control" type="text" minlength="2" maxlength="100" 
                        <?php if(old::article_keyword()): ?>
                        value="<?php echo old::article_keyword(); ?>" 
                        <?php else: ?>
                        placeholder="article_keyword" 
                        <?php endif; ?>>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>keyword</label>
                    <input name="article_keyword[]" multiple class="form-control" type="text" minlength="2" maxlength="100" 
                        <?php if(old::article_keyword()): ?>
                        value="<?php echo old::article_keyword(); ?>" 
                        <?php else: ?>
                        placeholder="article_keyword" 
                        <?php endif; ?>>
                </div>
            </div>

            <div class="col-md-4">
                <div class="form-group">
                    <label>keyword</label>
                    <input name="article_keyword[]" multiple class="form-control" type="text" minlength="2" maxlength="100" 
                        <?php if(old::article_keyword()): ?>
                        value="<?php echo old::article_keyword(); ?>" 
                        <?php else: ?>
                        placeholder="article_keyword" 
                        <?php endif; ?>>
                </div>
            </div>

            <div class="col-md-12">
                <label>article text</label>
                <textarea name="article_text" rows="5"  maxlength="60000" type="text" class="form-control" placeholder="article text" id="editor1"><?php if(old::article_title()): echo old::article_title(); endif; ?></textarea>
                <script>CKEDITOR.replace('editor1')</script>
            </div>

            <div class="col-md-12">
                <div class="form-group">
                    <label>category</label>
                    <select class="form-control" name="category_id" required>
                        <?php foreach($data->category as $category): ?>
                        <option value="<?php echo $category->category_id; ?>">
                            <?php echo $category->category_title; ?>
                        </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
        </div>
    </div>
</form>