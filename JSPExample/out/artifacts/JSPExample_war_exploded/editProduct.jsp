<%--
  Created by IntelliJ IDEA.
  User: BO-DINH
  Date: 1/27/2021
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="WEB-RES/css/css.css"/>
    <title>Chỉnh sửa</title>
</head>
<%@ page import="Model.Product" %>
<% Product product = (Product) request.getAttribute("product"); %>
<body>
<div class="modal-dialog">
    <div class="modal-content">
        <form>
            <div class="modal-header">
                <h4 class="modal-title">Chỉnh sửa sản phẩm</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Mã Sản phẩm</label>
                    <% out.print("<input type=\"text\" value='"+product.getIdProduct()+"' readonly name=\"id\" class=\"form-control\" required>"); %>
                </div>
                <div class="form-group">
                    <label>Tên sản phẩm</label>
                    <% out.print("<input type=\"text\" value='"+product.getName()+"' name=\"name\" class=\"form-control\" required>"); %>
                </div>
                <div class="form-group">
                    <label>Giá</label>
                    <% out.print("<input TYPE=\"number\" class=\"form-control\" value='"+product.getPrice()+"' name=\"price\" required />"); %>
                </div>
                <div class="form-group">
                    <label>Mô tả</label>
                    <% out.print("<textarea type=\"text\" name=\"description\" class=\"form-control\">"+product.getDescription()+"</textarea>"); %>
                </div>
                <div class="form-group">
                    <label>Xuất xứ : </label>
                    <select name="country">
                        <% out.print("<option value=\""+product.getMadeOfProduct()+"\" selected=\"selected\">"+product.getMadeOfProduct()+"</option>"); %>
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
                <input type="submit" class="btn btn-success" value="Lưu">
            </div>
        </form>
    </div>
</div>
</body>
</html>
