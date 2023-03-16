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
public class DauBepDAO extends MyDAO {

    public List<DauBep> getDauBepList() {
        List<DauBep> t = new ArrayList<>();
        xSql = "select * from DauBep";
        try {
            ps = con.prepareStatement(xSql);
            rs = ps.executeQuery();
            String xChef, ximg, xChuyenMon, xGender;
            int xrate,xIdChef;
            DauBep x;
            while (rs.next()) {
                xChef = rs.getString("Chef");
                ximg = rs.getString("img");
                xChuyenMon = rs.getString("ChuyenMon");
                xGender = rs.getString("Gender");
                xrate = rs.getInt("rate");
                xIdChef = rs.getInt("IdChef");
                x = new DauBep(xChef, ximg, xChuyenMon, xGender,xrate, xIdChef);
                t.add(x);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (t);
    }

    public DauBep getDauBep(String xChef) {
        xSql = "select * from DauBep where Chef = ?";
        String ximg, xChuyenmon, xGender;
        int xrate, xIdChef;
        DauBep x = null;
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xChef);
            rs = ps.executeQuery();
            if (rs.next()) {
                ximg = rs.getString("img");
                xChuyenmon = rs.getString("ChuyenMon");
                xGender = rs.getString("Gender");
                xrate = rs.getInt("rate");
                xIdChef = rs.getInt("IdChef");
                x = new DauBep(xChef, ximg, xChuyenmon, xGender,xrate, xIdChef);
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (x);
    }

    public void updatechef(String Chef, String img, String ChuyenMon, String Gender, int rate, int IdChef) {
//        xSql = "update DauBep set img=?, ChuyenMon=?, Gender=?, IdChef=? where Chef=?";
        xSql = "  update DauBep \n"
                + "  set img = ?,\n"
                + "  ChuyenMon = ?,\n"
                + "  Gender = ?,\n"
                + "  rate = ?,\n"
                + "  IdChef = ?"
                + "  where Chef = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, img);
            ps.setString(2, ChuyenMon);
            ps.setString(3, Gender);
            ps.setInt(4, rate);
            ps.setInt(5, IdChef);
            ps.setString(6, Chef);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertchef(DauBep x) {
        xSql = "insert into DauBep (Chef,img,ChuyenMon,Gender,rate,IdChef) values (?,?,?,?,?,?)";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, x.getChef());
            ps.setString(2, x.getImg());
            ps.setString(3, x.getChuyenMon());
            ps.setString(4, x.getGender());
            ps.setInt(5, x.getRate());
            ps.setInt(6, x.getIdChef());
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteChef(String xChef) {
        xSql = "delete DauBep where Chef = ?";
        try {
            ps = con.prepareStatement(xSql);
            ps.setString(1, xChef);
            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
