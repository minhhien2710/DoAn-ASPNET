using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAO;
using DTO;

namespace BUS
{
    public class SanPhamBUS
    {
        public static List<SanPhamDTO> LayDSSanPham()
        {
            return SanPhamDAO.LayDSSanPham();
        }

        public static List<SanPhamDTO> LayDSSanPham(string maLoaiSP)
        {
            return SanPhamDAO.LayDSSanPham(maLoaiSP);
        }
    }
}
