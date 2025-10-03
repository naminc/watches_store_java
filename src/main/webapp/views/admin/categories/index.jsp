<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>Categories Management</h1>
        <ol class="breadcrumb">
            <li><a href="/admin">Admin</a></li>
            <li class="active">Categories</li>
        </ol>
    </section>
    <section class="content container-fluid">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Categories List</h3>
                <div class="box-tools pull-right">
                    <button
                            type="button"
                            class="btn bg-purple"
                            data-toggle="modal"
                            data-target="#addCategoryModal"
                    >
                        <i class="fa fa-plus"></i> Add Category
                    </button>
                </div>
            </div>
            <div class="box-body">
                <div class="table-responsive">
                    <table
                            id="categoryTable"
                            class="table table-bordered table-striped"
                    >
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Icon</th>
                            <th>Description</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Shirt</td>
                            <td>
                                <img
                                        src="https://nam.gold/admin-assets/images/icons/categories/cloth.png"
                                        alt="Icon"
                                        class=""
                                        style="width: 40px; height: 40px"
                                />
                            </td>
                            <td>Shirt</td>
                            <td>
                                <span class="badge bg-green">02-10-2025 15:09:08</span>
                            </td>
                            <td>
                                <span class="badge bg-blue">02-10-2025 15:09:08</span>
                            </td>
                            <td>
                                <a
                                        href="#"
                                        class="btn btn-success btn-sm"
                                        data-toggle="modal"
                                        data-target="#editCategoryModal"
                                        data-id="1"
                                        data-name="Shirt"
                                        data-description="Shirt"
                                >
                                    <i class="fa fa-edit"></i>
                                </a>
                                <form
                                        action="https://nam.gold/admin/categories/1"
                                        method="POST"
                                        style="display: inline-block"
                                >
                                    <input
                                            type="hidden"
                                            name="_token"
                                            value="JnanRB8HX95fEarVs64Ciie5F9LGmDNIkbzrkUwf"
                                    />
                                    <input type="hidden" name="_method" value="DELETE" />
                                    <button
                                            onclick="return confirmDelete(event, this)"
                                            class="btn btn-danger btn-sm"
                                    >
                                        <i class="fa fa-trash"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Watches</td>
                            <td>
                                <img
                                        src="https://nam.gold/admin-assets/images/icons/categories/watch.svg"
                                        alt="Icon"
                                        class=""
                                        style="width: 40px; height: 40px"
                                />
                            </td>
                            <td>Watches</td>
                            <td>
                                <span class="badge bg-green">02-10-2025 15:09:08</span>
                            </td>
                            <td>
                                <span class="badge bg-blue">02-10-2025 15:09:08</span>
                            </td>
                            <td>
                                <a
                                        href="#"
                                        class="btn btn-success btn-sm"
                                        data-toggle="modal"
                                        data-target="#editCategoryModal"
                                        data-id="2"
                                        data-name="Watches"
                                        data-description="Watches"
                                >
                                    <i class="fa fa-edit"></i>
                                </a>
                                <form
                                        action="https://nam.gold/admin/categories/2"
                                        method="POST"
                                        style="display: inline-block"
                                >
                                    <input
                                            type="hidden"
                                            name="_token"
                                            value="JnanRB8HX95fEarVs64Ciie5F9LGmDNIkbzrkUwf"
                                    />
                                    <input type="hidden" name="_method" value="DELETE" />
                                    <button
                                            onclick="return confirmDelete(event, this)"
                                            class="btn btn-danger btn-sm"
                                    >
                                        <i class="fa fa-trash"></i>
                                    </button>
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
<div class="modal fade" id="addCategoryModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form
                    action="https://nam.gold/admin/categories/store"
                    method="POST"
                    enctype="multipart/form-data"
            >
                <input
                        type="hidden"
                        name="_token"
                        value="JnanRB8HX95fEarVs64Ciie5F9LGmDNIkbzrkUwf"
                />
                <div class="modal-header">
                    <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                    >
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">
                        <i class="fa fa-plus"></i> Add New Category
                    </h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="category_name">Category Name</label>
                        <input
                                type="text"
                                class="form-control"
                                id="category_name"
                                name="name"
                                placeholder="Enter category name"
                                value=""
                                required
                        />
                    </div>
                    <div class="form-group">
                        <label for="category_description">Description</label>
                        <textarea
                                class="form-control"
                                id="category_description"
                                name="description"
                                rows="3"
                                placeholder="Enter category description"
                        ></textarea>
                    </div>
                    <div class="form-group">
                        <label for="category_icon">Icon</label>
                        <input
                                type="file"
                                class="form-control"
                                id="category_icon"
                                name="icon"
                                accept="image/*"
                                required
                        />
                    </div>
                </div>
                <div class="modal-footer">
                    <button
                            type="button"
                            class="btn btn-default pull-left"
                            data-dismiss="modal"
                    >
                        Close
                    </button>
                    <button type="submit" class="btn bg-purple">
                        <i class="fa fa-plus"></i> Add
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="editCategoryModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form
                    action="https://nam.gold/admin/categories/update"
                    method="POST"
                    enctype="multipart/form-data"
            >
                <input
                        type="hidden"
                        name="_token"
                        value="JnanRB8HX95fEarVs64Ciie5F9LGmDNIkbzrkUwf"
                />
                <div class="modal-header">
                    <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                    >
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title">
                        <i class="fa fa-edit"></i> Edit Category
                    </h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="category_id" id="edit_category_id" />
                    <div class="form-group">
                        <label for="edit_category_name">Category Name</label>
                        <input
                                type="text"
                                class="form-control"
                                id="edit_category_name"
                                name="name"
                                placeholder="Enter category name"
                                required
                        />
                    </div>
                    <div class="form-group">
                        <label for="edit_category_description">Description</label>
                        <textarea
                                class="form-control"
                                id="edit_category_description"
                                name="description"
                                rows="3"
                                placeholder="Enter category description"
                        ></textarea>
                    </div>
                    <div class="form-group">
                        <label for="edit_category_icon">Icon</label>
                        <input
                                type="file"
                                class="form-control"
                                id="edit_category_icon"
                                name="icon"
                                accept="image/*"
                        />
                    </div>
                </div>
                <div class="modal-footer">
                    <button
                            type="button"
                            class="btn btn-default pull-left"
                            data-dismiss="modal"
                    >
                        Close
                    </button>
                    <button type="submit" class="btn bg-purple">
                        <i class="fa fa-save"></i> Save
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>