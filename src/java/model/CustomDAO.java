/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pc
 */
public class CustomDAO extends MyDAO {

    public List<Custom> getCustomList() {
        List<Custom> t = new ArrayList<>();
        xSql = "select * from Custom";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            String xNameC, ximgC;
            int xIdChef, xPriceC;
            Custom x;
            while (rs.next()) {
                xNameC = rs.getString("nameC");
                xPriceC = rs.getInt("priceC");
                ximgC = rs.getString("imgC");
                xIdChef = rs.getInt("IdChef");
                x = new Custom(xNameC, xPriceC, ximgC, xIdChef);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public Custom getCustom(String xNameC) {
        xSql = "select * from Custom where nameC = ?";
        int xPriceC;
        String ximgC;
        int xIdChef;
        Custom x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameC);
            rs = ps.executeQuery();
            if (rs.next()) {
                xPriceC = rs.getInt("priceC");
                ximgC = rs.getString("imgC");
                xIdChef = rs.getInt("IdChef");
                x = new Custom(xNameC, xPriceC, ximgC, xIdChef);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void updateCustom(String nameC, int priceC, String imgC,int IdChef) {
        xSql = "  update Custom \n"
                + "  set priceC = ?,\n"
                + "  imgC = ?,\n"
                + "  IdChef = ?"
                + "  where nameC = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, priceC);
            ps.setString(2, imgC);
            ps.setInt(3, IdChef);
            ps.setString(4, nameC);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertCustom(Custom x) {
        xSql = "insert into Custom (nameC,priceC,imgC,IdChef) values (?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getNameC());
            ps.setInt(2, x.getPriceC());
            ps.setString(3, x.getImgC());
            ps.setInt(4, x.getIdChef());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCustom(String xNameC) {
        xSql = "delete Custom where nameC = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameC);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
