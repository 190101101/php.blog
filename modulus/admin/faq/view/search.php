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
                    <th>text</th>
                    <th>sub text</th>
                    <th>created</th>
                    <th>show</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>text</td>
                    <td>sub text</td>
                    <td>created</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->faq as $faq): ?>
                <tr>
                    <td><?php echo $faq->faq_id; ?></td>
                    <td><?php echo substr($faq->faq_text, 0, 20); ?></td>
                    <td><?php echo substr($faq->faq_subtext, 0, 30); ?></td>
                    <td><?php echo date_ymd($faq->faq_created); ?></td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/faq/show/<?php echo $faq->faq_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-warning"
                        href="/panel/faq/update/<?php echo $faq->faq_id; ?>">update</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/faq/delete/<?php echo $faq->faq_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, breadcump_search()); ?>
        </ul>
    </div>
</div>