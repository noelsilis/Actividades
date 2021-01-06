/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Maye Silis
 */
@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();

    @RequestMapping("index.htm")
    public ModelAndView inicio() {
        return mav;
    }
    
    @RequestMapping("mallaCurricular.htm")
    public ModelAndView malla1() {
        String sql = "";
        List datos;
        for (int i = 1; i < 10; i++) {
            sql = "call isic.sp_malla(" + i + ", 2)";
            datos = this.jdbcTemplate.queryForList(sql);
            String aux = "as"+i;
            mav.addObject(aux, datos);
        }
        sql = "call isic.sp_area()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("area", datos);
        sql = "call isic.sp_asignaturasEsp(1)";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("mat", datos);
        mav.setViewName("mallaCurricular");
        return mav;
    }
    
    @RequestMapping("mallaCurricular2.htm")
    public ModelAndView malla2() {
        String sql = "";
        List datos;
        for (int i = 1; i < 10; i++) {
            sql = "call isic.sp_malla(" + i + ", 1)";
            datos = this.jdbcTemplate.queryForList(sql);
            String aux = "as"+i;
            mav.addObject(aux, datos);
        }
        sql = "call isic.sp_area()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("area", datos);
        sql = "call isic.sp_asignaturasEsp(2)";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("mat", datos);
        mav.setViewName("mallaCurricular2");
        return mav;
    }
    
    @RequestMapping("Investigacion.htm")
    public ModelAndView areaInvestigacion() {
        String sql = "call isic.sp_lineaInvs()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("inv", datos);
        mav.setViewName("Investigacion");
        return mav;
    }
    
    @RequestMapping("EspecialidadUno.htm")
    public ModelAndView EspecialidadUno() {
        String sql = "call isic.sp_especialidad(1)";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espInfo", datos);
        sql = "call isic.sp_asignaturasEsp(1)";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espAsig", datos);
        sql = "call isic.sp_egreso(1)";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espEgr", datos);
        mav.setViewName("EspecialidadUno");
        return mav;
    }
}
