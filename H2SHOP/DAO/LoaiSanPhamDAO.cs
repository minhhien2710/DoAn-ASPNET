using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class LoaiSanPhamDAO
    {
        public static List<LoaiSanPhamDTO> LayDSLoaiSanPham()
        {
            string query = "SELECT * FROM LoaiSanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<LoaiSanPhamDTO> lstLoaiSanPham = new List<LoaiSanPhamDTO>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstLoaiSanPham.Add(ConvertToDTO(dr));
            }
            return lstLoaiSanPham;
        }

        public static LoaiSanPhamDTO ConvertToDTO(DataRow dr)
        {
            LoaiSanPhamDTO loaiSP = new LoaiSanPhamDTO();
            loaiSP.MaLoaiSP = dr["MaLoaiSP"].ToString();
            loaiSP.TenLoaiSP = dr["TenLoaiSP"].ToString();
            loaiSP.TrangThai = Convert.ToBoolean(dr["TrangThai"]);
            return loaiSP;
        }
    }
}
