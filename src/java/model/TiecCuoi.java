/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pc
 */
public class TiecCuoi {
    private String nameT;
    private int priceT;
    private String imgT;
    private int IdChef;

    public TiecCuoi() {
    }

    public TiecCuoi(String nameT, int priceT, String imgT, int IdChef) {
        this.nameT = nameT;
        this.priceT = priceT;
        this.imgT = imgT;
        this.IdChef = IdChef;
    }

    public String getNameT() {
        return nameT;
    }

    public void setNameT(String nameT) {
        this.nameT = nameT;
    }

    public int getPriceT() {
        return priceT;
    }

    public void setPriceT(int priceT) {
        this.priceT = priceT;
    }

    public String getImgT() {
        return imgT;
    }

    public void setImgT(String imgT) {
        this.imgT = imgT;
    }

    public int getIdChef() {
        return IdChef;
    }

    public void setIdChef(int IdChef) {
        this.IdChef = IdChef;
    }
    
    

    
}
