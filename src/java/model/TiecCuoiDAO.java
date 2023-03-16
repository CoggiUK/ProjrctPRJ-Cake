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
public class TiecCuoiDAO extends MyDAO{
    public List<TiecCuoi> getTiecCuoiList() {
        List<TiecCuoi> t = new ArrayList<>();
        xSql = "select * from TiecCuoi";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            String xNameT, ximgT;
            int xIdChef;
            int xPriceT;
            TiecCuoi x;
            while (rs.next()) {
                xNameT = rs.getString("nameT");
                xPriceT = rs.getInt("priceT");
                ximgT = rs.getString("imgT");
                xIdChef = rs.getInt("IdChef");
                x = new TiecCuoi(xNameT, xPriceT, ximgT, xIdChef);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public TiecCuoi getTiecCuoi(String xNameT) {
        xSql = "select * from TiecCuoi where nameT = ?";
        int xPriceT;
        String ximgT;
        int xIdChef;
        TiecCuoi x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameT);
            rs = ps.executeQuery();
            if (rs.next()) {
                xPriceT = rs.getInt("priceT");
                ximgT = rs.getString("imgT");
                xIdChef = rs.getInt("IdChef");
                x = new TiecCuoi(xNameT, xPriceT, ximgT, xIdChef);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void updateTC(String nameT, int priceT, String imgT,int IdChef) {
        xSql = "  update TiecCuoi \n"
                + "  set priceT = ?,\n"
                + "  imgT = ?,\n"
                + "  IdChef = ?"
                + "  where nameT = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, priceT);
            ps.setString(2, imgT);
            ps.setInt(3, IdChef);
            ps.setString(4, nameT);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertTC(TiecCuoi x) {
        xSql = "insert into TiecCuoi (nameT,priceT,imgT,IdChef) values (?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getNameT());
            ps.setInt(2, x.getPriceT());
            ps.setString(3, x.getImgT());
            ps.setInt(4, x.getIdChef());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteTC(String xNameT) {
        xSql = "delete TiecCuoi where nameT = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameT);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
