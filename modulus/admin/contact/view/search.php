<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>contact</span>
            </div>      
            <?php page_data($data->page); ?>
        </div>
    </div>

    <div class="card-body">
        <table class="table table-media table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>theme</th>
                    <th>email</th>
                    <th>message</th>
                    <th>show</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>theme</td>
                    <td>email</td>
                    <td>message</td>
                    <td>show</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->contact as $contact): ?>
                <tr>
                    <td><?php echo $contact->contact_id; ?></td>
                    <td><?php echo $contact->contact_theme; ?></td>
                    <td><?php echo $contact->contact_email; ?></td>
                    <td><?php echo substr($contact->contact_message, 0, 20); ?></td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/contact/show/<?php echo $contact->contact_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/contact/delete/<?php echo $contact->contact_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, breadcump_search()); ?>
        </ul>
    </div>
</div>