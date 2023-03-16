/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pc
 */
public class SinhNhat {
    private String nameS;
    private int priceS;
    private String imgS;
    private int IdChef;

    public SinhNhat() {
    }

    public SinhNhat(String nameS, int priceS, String imgS, int IdChef) {
        this.nameS = nameS;
        this.priceS = priceS;
        this.imgS = imgS;
        this.IdChef = IdChef;
    }

    public String getNameS() {
        return nameS;
    }

    public void setNameS(String nameS) {
        this.nameS = nameS;
    }

    public int getPriceS() {
        return priceS;
    }

    public void setPriceS(int priceS) {
        this.priceS = priceS;
    }

    public String getImgS() {
        return imgS;
    }

    public void setImgS(String imgS) {
        this.imgS = imgS;
    }

    public int getIdChef() {
        return IdChef;
    }

    public void setIdChef(int IdChef) {
        this.IdChef = IdChef;
    }
    
    
    

    

 
}
