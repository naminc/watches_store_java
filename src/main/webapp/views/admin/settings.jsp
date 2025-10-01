<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/views/includes/taglib.jsp" %>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            System Management
        </h1>
        <ol class="breadcrumb">
            <li><a href="<c:url value='/admin' />"><i class="fa fa-dashboard"></i> Admin</a></li>
            <li class="active">System</li>
        </ol>
    </section>
    <section class="content container-fluid">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">System Information</h3>
            </div>
            <div class="box-body">
                <form action="<c:url value='/admin/settings'/>" method="POST">
                    <div class="row">
                        <!-- Left column -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input type="text" class="form-control" name="title"
                                       value="${settings.title}" placeholder="Enter website title">
                            </div>
                            <div class="form-group">
                                <label for="keyword">Keyword</label>
                                <input type="text" class="form-control" name="keyword"
                                       value="${settings.keyword}" placeholder="Enter keyword, separated by commas">
                            </div>
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="form-control" name="description" rows="3"
                                          placeholder="Enter website description">${settings.description}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="logo">Logo</label>
                                <input type="text" class="form-control" name="logo"
                                       value="${settings.logo}" placeholder="Enter logo path (e.g. assets/images/logo.png)">
                            </div>
                            <div class="form-group">
                                <label for="icon">Icon</label>
                                <input type="text" class="form-control" name="icon"
                                       value="${settings.icon}" placeholder="Enter icon path (e.g. assets/images/favicon.ico)">
                            </div>
                        </div>

                        <!-- Right column -->
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="author">Author</label>
                                <input type="text" class="form-control" name="author"
                                       value="${settings.owner}" placeholder="Enter author">
                            </div>
                            <div class="form-group">
                                <label for="brand">Brand</label>
                                <input type="text" class="form-control" name="brand"
                                       value="${settings.brand}" placeholder="Enter brand">
                            </div>
                            <div class="form-group">
                                <label for="domain">Domain</label>
                                <input type="text" class="form-control" name="domain"
                                       value="${settings.domain}" placeholder="Enter domain (e.g. naminc.io)">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" name="phone"
                                       value="${settings.phone}" placeholder="Enter phone number">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email"
                                       value="${settings.email}" placeholder="Enter contact email">
                            </div>
                            <div class="form-group">
                                <label for="address">Address</label>
                                <textarea class="form-control" name="address" rows="3"
                                          placeholder="Enter contact address">${settings.address}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="maintenance_mode">
                                    Maintenance Mode <small>(Only applies to users, admin accounts are not affected.)</small>
                                </label>
                                <select class="form-control" name="maintenance_mode">
                                    <option value="off" ${settings.maintenance == 'off' ? 'selected' : ''}>OFF</option>
                                    <option value="on" ${settings.maintenance == 'on' ? 'selected' : ''}>ON</option>
                                </select>
                            </div>
                        </div>
                    </div>

                    <!-- Submit -->
                    <div class="form-group text-center">
                        <button type="submit" class="btn bg-purple">
                            <i class="fa fa-save"></i> Save
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>