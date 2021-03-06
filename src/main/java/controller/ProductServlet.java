package controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import model.Category;
import model.Product;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = "/products")
public class ProductServlet extends HttpServlet {
    private ProductDAO productDAO = new ProductDAO();
    private CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "sortByPriceMax":
                    sortByPriceMax(request, response);
                break;
                case "sortByPriceMin":
                    sortByPriceMin(request, response);
                    break;
                case "page":
                    findAllByPage(request, response);
                    break;
                case "category":
                    findAllByCategoryId(request, response);
                    break;
                case "findByPrice":
                    findbyPrice(request, response);
                    break;
                case "list_grid":
                    findAllGrid(request, response);
                    break;
                case "create":
                    showFormCreate(request, response);
                    break;
                case "edit":
                    showFormEdit(request, response);
                    break;
                case "delete":
                    showFormDelete(request, response);
                    break;
                default:
                    findAll(request, response);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "findByPrice":
                    findbyPrice(request, response);
                    break;
                case "create":
                    create(request, response);
                    break;
                case "edit":
                    update(request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                case "search":
                    searchByName(request, response);
                    break;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void findAll(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        List<Product> products = productDAO.findAll();
        int countPage = productDAO.countPage();
        request.setAttribute("countPage",countPage);
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }




    private void findAllByPage(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        int index = Integer.parseInt(request.getParameter("index"));
        List<Product> products = productDAO.findAllByPage((index-1)*5);
        int countPage = productDAO.countPage();
        request.setAttribute("countPage",countPage);
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void sortByPriceMax(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        List<Product> products = productDAO.findAllByPriceMax();
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void sortByPriceMin(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        List<Product> products = productDAO.findAllByPriceMin();
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void findAllByCategoryId(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        int cid= Integer.parseInt(request.getParameter("categoryId"));
        List<Product> products = productDAO.findByCategoryId(cid);
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void findbyPrice(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        int priceMin= Integer.parseInt(request.getParameter("priceMin"));
        int priceMax= Integer.parseInt(request.getParameter("priceMax"));
        List<Product> products = productDAO.findByPrice(priceMin,priceMax);
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void findAllGrid(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list_grid.jsp");
        List<Product> products = productDAO.findAll();
        request.setAttribute("products", products);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/create.jsp");
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void create(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String color = request.getParameter("color");
        String description = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("category"));
        List<Category> categories = categoryDAO.findAll();
//        int categoryId = 0;
//        for (Category category : categories) {
//            if (categoryName.equals(category.getName())) {
//                categoryId = category.getId();
//            }
//        }
        Product product = new Product(name, price, quantity, color, description, categoryId);
        productDAO.add(product);
        findAll(request, response);
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/update.jsp");
        Product product = productDAO.findById(id);
        request.setAttribute("product", product);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request, response);
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.findById(id);
        product.setName(request.getParameter("name"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setQuantity(Integer.parseInt(request.getParameter("quantity")));
        product.setColor(request.getParameter("color"));
        product.setDescription(request.getParameter("description"));
        int categoryId = Integer.parseInt(request.getParameter("category"));

        product.setCategoryId(categoryId);
        productDAO.edit(id, product);
        findAll(request, response);
    }

    private void showFormDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productDAO.findById(id);
        request.setAttribute("product", product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/delete.jsp");
        requestDispatcher.forward(request, response);
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productDAO.delete(id);
        findAll(request, response);
    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException {
        String name = request.getParameter("name");
        List<Product> list = productDAO.findByName(name);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("Product/list.jsp");
        request.setAttribute("products",list);
        List<Category> categories = categoryDAO.findAll();
        request.setAttribute("categories", categories);
        requestDispatcher.forward(request,response);
    }
}