/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pc
 */
public class Custom {
    private String nameC;
    private int priceC;
    private String imgC;
    private int IdChef;   

    public Custom() {
    }

    public Custom(String nameC, int priceC, String imgC, int IdChef) {
        this.nameC = nameC;
        this.priceC = priceC;
        this.imgC = imgC;
        this.IdChef = IdChef;
    }

    public String getNameC() {
        return nameC;
    }

    public void setNameC(String nameC) {
        this.nameC = nameC;
    }

    public int getPriceC() {
        return priceC;
    }

    public void setPriceC(int priceC) {
        this.priceC = priceC;
    }

    public String getImgC() {
        return imgC;
    }

    public void setImgC(String imgC) {
        this.imgC = imgC;
    }

    public int getIdChef() {
        return IdChef;
    }

    public void setIdChef(int IdChef) {
        this.IdChef = IdChef;
    }

    
    
    
}
