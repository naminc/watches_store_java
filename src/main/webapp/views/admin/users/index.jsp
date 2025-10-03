<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Users Management</h1>
        <ol class="breadcrumb">
            <li><a href="/admin">Admin</a></li>
            <li class="active">Users</li>
        </ol>
    </section>
    <section class="content container-fluid">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Users List</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn bg-purple" data-toggle="modal" data-target="#addUserModal">
                        <i class="fa fa-plus"></i> Add User
                    </button>
                </div>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table id="userTable" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>FullName</th>
                            <th>Email</th>
                            <th>Status</th>
                            <th>Role</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Admin</td>
                            <td>admin@naminc.dev</td>
                            <td>
                                <span class="badge bg-green">Active</span>
                            </td>
                            <td>
                                <span class="badge bg-blue text-dark">Admin</span>
                            </td>
                            <td><span class="badge bg-green">02-10-2025 15:09:08</span>
                            </td>
                            <td><span class="badge bg-blue">02-10-2025 15:09:08</span>
                            </td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm" data-toggle="modal"
                                   data-target="#editUserModal"
                                   data-id="1"
                                   data-fullname="Admin"
                                   data-email="admin@naminc.dev"
                                   data-password="$2y$10$/wScTFKOLyvwskaqtrt5UOS6VSQ9YUyW6gTv9mtoWBeo0INbrpFp2"
                                   data-role="admin"
                                   data-status="active">
                                    <i class="fa fa-edit"></i>
                                </a>
                                <form action="https://nam.gold/admin/users/1" method="POST"
                                      style="display:inline-block">
                                    <input type="hidden" name="_token" value="jLMeiAM9slpdFDkR2sqBFtKm9bIOp9hRHHR5G3MY"> <input type="hidden" name="_method" value="DELETE">                                            <button onclick="return confirmDelete(event, this)"
                                                                                                                                                                                                                                class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>

<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title"><i class="fa fa-users"></i> Add User</h4>
            </div>
            <div class="modal-body">
                <form id="addUserForm" action="https://nam.gold/admin/users/store" method="post">
                    <input type="hidden" name="_token" value="jLMeiAM9slpdFDkR2sqBFtKm9bIOp9hRHHR5G3MY">                        <div class="form-group">
                    <label for="fullname">FullName</label>
                    <input type="text" class="form-control" name="fullname" placeholder="Enter fullname"
                           required  value="">
                </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" name="email" placeholder="Enter email address"
                               required  value="">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Enter password"
                               required  value="">
                    </div>
                    <div class="form-group">
                        <label for="role">Role</label>
                        <select class="form-control" name="role" required  value="">
                            <option value="">Choose role</option>
                            <option value="admin">Admin</option>
                            <option value="user">User</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="status">Status</label>
                        <select class="form-control" name="status" required  value="">
                            <option value="">Choose status</option>
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                        </select>
                    </div>
                    <button type="submit" class="btn bg-purple"><i class="fa fa-plus"></i> Add</button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title"><i class="fa fa-edit"></i> Edit User</h4>
            </div>
            <div class="modal-body">
                <form id="editUserForm" action="https://nam.gold/admin/users/update" method="post">
                    <input type="hidden" name="_token" value="jLMeiAM9slpdFDkR2sqBFtKm9bIOp9hRHHR5G3MY">                        <input type="hidden" id="edit_user_id" name="user_id" value="">
                    <div class="form-group">
                        <label for="edit_email">Email</label>
                        <input type="email" class="form-control" id="edit_email" placeholder="Enter email address" name="email" required value="">
                    </div>
                    <div class="form-group">
                        <label for="edit_fullname">FullName</label>
                        <input type="text" class="form-control" placeholder="Enter fullname" id="edit_fullname"
                               name="fullname" required value="">
                    </div>
                    <div class="form-group">
                        <label for="edit_password">Password</label>
                        <input type="password" class="form-control" id="edit_password" name="password"
                               placeholder="Enter password" value="">
                    </div>
                    <div class="form-group">
                        <label for="edit_role">Role</label>
                        <select class="form-control" id="edit_role" name="role" required>
                            <option value="">Choose role</option>
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="edit_status">Status</label>
                        <select class="form-control" id="edit_status" name="status" required>
                            <option value="">Choose status</option>
                            <option value="active">Active</option>
                            <option value="inactive">Inactive</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn bg-purple"><i class="fa fa-save"></i>
                            Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>