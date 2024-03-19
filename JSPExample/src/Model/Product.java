package Model;

public class Product {
    private int idProduct;
    private String name;
    private long price;
    private String description;
    private String madeOfProduct;


    public Product(){

    }

    public Product(int idProduct, String name, long price, String description, String madeOfProduct) {
        this.idProduct = idProduct;
        this.name = name;
        this.price = price;
        this.description = description;
        this.madeOfProduct = madeOfProduct;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMadeOfProduct() {
        return madeOfProduct;
    }

    public void setMadeOfProduct(String madeOfProduct) {
        this.madeOfProduct = madeOfProduct;
    }
}
