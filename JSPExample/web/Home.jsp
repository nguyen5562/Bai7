<%--
  Created by IntelliJ IDEA.
  User: Pham-Van-Dinh
  Date: 1/26/2021
  Time: 10:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="WEB-RES/css/css.css"/>
</head>
<body>
<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Danh Sách <b>Sản Phẩm</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Employee</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>

                    <th>Mã SP</th>
                    <th>Tên Sản phẩm</th>
                    <th>Giá</th>
                    <th>Mô tả</th>
                    <th>Xuất xứ</th>
                    <th>Hoạt động</th>
                </tr>
                </thead>
                <tbody>
                <%@ page import="Model.Product" %>
                <%@ page import="java.util.List" %>
                <%@ page import="java.text.NumberFormat" %>
                <%@ page import="java.text.DecimalFormat" %>
                <%
                    List<Product> products = (List<Product>) request.getAttribute("listProduct");
                    for (Product product:products
                         ) {
                        NumberFormat numberFormat = new DecimalFormat("#,###");
                        out.print("                    <tr>\n" +
                                "                        <td>"+product.getIdProduct()+"</td>\n" +
                                "                        <td>"+product.getName()+"</td>\n" +
                                "                        <td>"+numberFormat.format(product.getPrice())+ " VNĐ" +"</td>\n" +
                                "                        <td>"+product.getDescription()+"</td>\n" +
                                "                        <td>"+product.getMadeOfProduct()+"</td>\n"+
                                "                        <td>\n" +
                                "                            <a href=\"EditProduct?idProduct="+product.getIdProduct()+"\" class=\"edit\"><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Edit\">&#xE254;</i></a>\n" +
                                "                            <a onclick=\"return confirm('Bạn có chắc muốn xoá sản phẩm này ??')\" href=\"DeleteProduct?idProduct="+product.getIdProduct()+"\" class=\"delete\" ><i class=\"material-icons\" data-toggle=\"tooltip\" title=\"Delete\">&#xE872;</i></a>\n" +
                                "                        </td>\n" +
                                "                    </tr>");
                    }
                %>

<%--                <tr>--%>
<%--                    <td></td>--%>
<%--                    <td>thomashardy@mail.com</td>--%>
<%--                    <td>89 Chiaroscuro Rd, Portland, USA</td>--%>
<%--                    <td>(171) 555-2222</td>--%>
<%--                    <td>--%>
<%--                        <a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>--%>
<%--                        <a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>--%>
<%--                    </td>--%>
<%--                </tr>--%>

                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="Home">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm mới sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Mã Sản phẩm</label>
                        <input type="number" name="id" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input TYPE="number" class="form-control" name="price" required />
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea type="text" name="description" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Xuất xứ : </label>
                        <select name="country">
                            <option value="" selected="selected">Select Country</option>
                            <option value="United States">United States</option>
                            <option value="China">China</option>
                            <option value="China">Korean</option>
                            <option value="Hungary">Hungary</option>
                            <option value="Japan">Japan</option>
                            <option value="Viet Nam">Viet Nam</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Huỷ">
                    <input type="submit" class="btn btn-success" value="Thêm">
                </div>
            </form>
        </div>
    </div>
</div>
<%--<!-- Edit Modal HTML -->--%>
<%--<div id="editEmployeeModal" class="modal fade">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <form>--%>
<%--                <div class="modal-header">--%>
<%--                    <h4 class="modal-title">Edit Employee</h4>--%>
<%--                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    <div class="form-group">--%>
<%--                        <label>Name</label>--%>
<%--                        <input type="text" class="form-control" required>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label>Email</label>--%>
<%--                        <input type="email" class="form-control" required>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label>Address</label>--%>
<%--                        <textarea class="form-control" required></textarea>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <label>Phone</label>--%>
<%--                        <input type="text" class="form-control" required>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">--%>
<%--                    <input type="submit" class="btn btn-info" value="Save">--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<!-- Delete Modal HTML -->--%>
<%--<div id="deleteEmployeeModal" class="modal fade">--%>
<%--    <div class="modal-dialog">--%>
<%--        <div class="modal-content">--%>
<%--            <form>--%>
<%--                <div class="modal-header">--%>
<%--                    <h4 class="modal-title">Delete Employee</h4>--%>
<%--                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
<%--                </div>--%>
<%--                <div class="modal-body">--%>
<%--                    <p>Are you sure you want to delete these Records?</p>--%>
<%--                    <p class="text-warning"><small>This action cannot be undone.</small></p>--%>
<%--                </div>--%>
<%--                <div class="modal-footer">--%>
<%--                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">--%>
<%--                    <input type="submit" class="btn btn-danger" value="Delete">--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
</body>
</html>
