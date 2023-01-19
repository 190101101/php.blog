<div class="card mb-4">
    <div class="card-header">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <i class="fas fa-table me-1"></i>
                <span>guest</span>
            </div>      
            <?php page_data($data->page); ?>
        </div>
    </div>
    <div class="card-body">
        <table class="table table-media table-hover">
            <thead>
                <tr>
                    <th>id</th>
                    <th>ip</th>
                    <th>visit</th>
                    <th>created</th>
                    <th>show</th>
                    <th>delete</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <td>id</td>
                    <td>ip</td>
                    <td>visit</td>
                    <td>created</td>
                    <td>show</td>
                    <td>delete</td>
                </tr>
            </tfoot>
            <tbody>
                <?php foreach($data->guest as $guest): ?>
                <tr>
                    <td><?php echo $guest->guest_id; ?></td>
                    <td><?php echo $guest->guest_ip; ?></td>
                    <td>
                        <span class="text-<?php echo $guest->guest_visit > time() ? 'success' : 'warning'; ?>">
                            <?php echo date('Y-m-d H:i:s', $guest->guest_visit); ?>
                        </span>
                    </td>
                    <td><?php echo $guest->guest_created; ?></td>
                    <td><a class="btn btn-sm btn-success"
                        href="/panel/guest/show/<?php echo $guest->guest_id; ?>">show</a></td>
                    <td><a class="btn btn-sm btn-danger data-del"
                        data-get="/panel/guest/delete/<?php echo $guest->guest_id; ?>">delete</a></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <ul class="pagination justify-content-center">
            <?php pagination::selector($data->page, 'panel/guest/'); ?>
        </ul>
    </div>
</div>