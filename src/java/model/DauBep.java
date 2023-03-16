/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author pc
 */
public class DauBep {
    private String Chef;
    private String img;
    private String ChuyenMon;
    private String Gender;
    private int rate;
    private int IdChef;

    public DauBep() {
    }

    public DauBep(String Chef, String img, String ChuyenMon, String Gender, int rate, int IdChef) {
        this.Chef = Chef;
        this.img = img;
        this.ChuyenMon = ChuyenMon;
        this.Gender = Gender;
        this.IdChef = IdChef;
        this.rate = rate;
    }

    public String getChef() {
        return Chef;
    }

    public void setChef(String Chef) {
        this.Chef = Chef;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getChuyenMon() {
        return ChuyenMon;
    }

    public void setChuyenMon(String ChuyenMon) {
        this.ChuyenMon = ChuyenMon;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public int getIdChef() {
        return IdChef;
    }

    public void setIdChef(int IdChef) {
        this.IdChef = IdChef;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }
    
    
}
