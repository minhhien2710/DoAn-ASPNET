using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class GioHangDAO
    {
        public static bool KTGHTonTai(GioHangDTO gh)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }

        public static bool ThemGH(GioHangDTO gh)
        {
            string query = "INSERT INTO GioHang (TenTaiKhoan, MaSP, SoLuong) VALUES (@TenTaiKhoan, @MaSP, @SoLuong)";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaGH(GioHangDTO gh)
        {
            string query = "UPDATE GioHang SET SoLuong = SoLuong + @SoLuong WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gh.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gh.MaSP);
            param[2] = new SqlParameter("@SoLuong", gh.SoLuong);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
    }
}
