<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>category</span>
            </div>      
            <?php page_data($data->page); ?>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>title</th>
                    <th>section</th>
                    <th>created</th>
                    <th>count</th>
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
                    <td>section</td>
                    <td>created</td>
                    <td>count</td>
                    <td>status</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->category as $category): ?>
                <tr>
                    <td><?php echo $category->category_id; ?></td>
                    <td>
                        <a href="/panel/article/category/<?php echo $category->section_slug; ?>/<?php echo $category->category_slug; ?>/page/1">
                            #<?php echo $category->category_title; ?>
                        </a>
                    </td>
                    <td>
                        <a href="/panel/category/section/<?php echo $category->section_slug; ?>/page/1"
                            title="#id: <?php echo $category->section_id; ?>">
                            #<?php echo $category->section_title; ?>
                        </a>
                    </td>
                    <td><?php echo date_ymd($category->category_created); ?></td>
                    <td><?php echo $category->category_count; ?></td>
                    <td>
                        <label class="switch">
                        <input type="checkbox" class="data-get" 
                        <?php echo $category->category_id != 1 ?: 'disabled'; ?> 
                            data-get="/panel/category/status/<?php echo $category->category_id; ?>" 
                            <?php echo $category->category_status == 1 ? 'checked' : NULL; ?> > 
                        <span class="slider round"></span>
                        </label>
                    </td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/category/show/<?php echo $category->category_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-warning"
                        href="/panel/category/update/<?php echo $category->category_id; ?>">update</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/category/delete/<?php echo $category->category_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, 'panel/category/'); ?>
        </ul>
    </div>
</div>
