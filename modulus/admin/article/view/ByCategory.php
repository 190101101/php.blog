<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>by category</span>
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
                    <th>category</th>
                    <th>keyword</th>
                    <th>created</th>
                    <th>status</th>
                    <th>show</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>title</td>
                    <td>category</td>
                    <td>keyword</td>
                    <td>created</td>
                    <td>status</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->article as $article): ?>
                <tr>
                    <td aria-label="#">
                        <a <?php if($article->section_id != 1): ?>
                            href="/article/id/<?php echo $article->article_id; ?>"
                            <?php endif; ?> >
                            <?php echo $article->article_id; ?>        
                        </a>
                    </td>
                    <td aria-label="title"><?php echo substr($article->article_title, 0, 20); ?></td>
                    <td aria-label="category">#<?php echo substr(char_map($article->category_title), 0, 10); ?></td>
                    <td aria-label="text"><?php echo substr($article->article_keyword, 0, 10); ?></td>
                    <td><?php echo date_ymd($article->article_created); ?></td>
                    <td aria-label="status">
                        <label class="switch">
                        <input type="checkbox" class="data-get" 
                            data-get="/panel/article/status/<?php echo $article->article_id; ?>" 
                            <?php echo $article->article_status == 1 ? 'checked' : NULL; ?> > 
                        <span class="slider round"></span>
                        </label>
                    </td>
                    <td aria-label="show"><a class="btn btn-sm btn-success"
                        href="/panel/article/show/<?php echo $article->article_id; ?>">show</a></td>
                    <td aria-label="update">
                        <a class="btn btn-sm btn-warning"
                        href="/panel/article/update/<?php echo $article->article_id; ?>">update</a>
                    </td>
                    <td aria-label="delete">
                        <a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/article/delete/<?php echo $article->article_id; ?>">delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, "panel/article/category/{$data->section}/{$data->category}/"); ?>
        </ul>
    </div>
</div>
