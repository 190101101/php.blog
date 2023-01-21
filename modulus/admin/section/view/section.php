<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>section</span>
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
                    <th>created</th>
                    <th>show</th>
                    <th>update</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>title</td>
                    <td>created</td>
                    <td>show</td>
                    <td>update</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->section as $section): ?>
                <tr>
                    <td><?php echo $section->section_id; ?></td>
                    <td>
                        <a href="/panel/category/section/<?php echo $section->section_slug; ?>/page/1">
                            #<?php echo $section->section_title; ?>
                        </a>
                    </td>
                    <td><?php echo date_ymd($section->section_created); ?></td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/section/show/<?php echo $section->section_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-warning"
                        href="/panel/section/update/<?php echo $section->section_id; ?>">update</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/section/delete/<?php echo $section->section_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, 'panel/section/'); ?>
        </ul>
    </div>
</div>
