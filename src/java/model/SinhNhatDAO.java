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
public class SinhNhatDAO extends MyDAO{
    public List<SinhNhat> getSinhNhatList() {
        List<SinhNhat> t = new ArrayList<>();
        xSql = "select * from SinhNhat";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            String xNameS, ximgS;
            int xIdChef;
            int xPriceS;
            SinhNhat x;
            while (rs.next()) {
                xNameS = rs.getString("nameS");
                xPriceS = rs.getInt("priceS");
                ximgS = rs.getString("imgS");
                xIdChef = rs.getInt("IdChef");
                x = new SinhNhat(xNameS, xPriceS, ximgS, xIdChef);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public SinhNhat getSinhNhat(String xNameS) {
        xSql = "select * from SinhNhat where nameS = ?";
        int xPriceS;
        String ximgS;
        int xIdChef;
        SinhNhat x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameS);
            rs = ps.executeQuery();
            if (rs.next()) {
                xPriceS = rs.getInt("priceS");
                ximgS = rs.getString("imgS");
                xIdChef = rs.getInt("IdChef");
                x = new SinhNhat(xNameS, xPriceS, ximgS, xIdChef);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void updateSN(String nameS, int priceS, String imgS,int IdChef) {
        xSql = "  update SinhNhat \n"
                + "  set priceS = ?,\n"
                + "  imgS = ?,\n"
                + "  IdChef = ?"
                + "  where nameS = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setInt(1, priceS);
            ps.setString(2, imgS);
            ps.setInt(3, IdChef);
            ps.setString(4, nameS);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertSN(SinhNhat x) {
        xSql = "insert into SinhNhat (nameS,priceS,imgS,IdChef) values (?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getNameS());
            ps.setInt(2, x.getPriceS());
            ps.setString(3, x.getImgS());
            ps.setInt(4, x.getIdChef());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteSN(String xNameS) {
        xSql = "delete SinhNhat where nameS = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xNameS);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
