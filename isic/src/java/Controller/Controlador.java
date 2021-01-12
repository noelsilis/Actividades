/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import Modelo.Asignatura;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
    String sql;

    @RequestMapping("index.htm")
    public ModelAndView inicio() {
        sql = "call isic.sp_especialidad_lista()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("listEsp", datos);
        return mav;
    }

    @RequestMapping("adminMallaCurricular.htm")
    public ModelAndView adminMalla() {
         sql = "call isic.sp_especialidad_lista()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("listEsp", datos);
        sql = "call isic.sp_getMalla_Admin()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("asignatura", datos);
        sql = "call isic.sp_get_ListaMateriasEsp()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("listAsigEsp", datos);
        mav.setViewName("adminMallaCurricular");
        return mav;
    }
    
    @RequestMapping(value = "adminMallaCurricular.htm", method = RequestMethod.POST)
    public ModelAndView adminMalla(Asignatura asi) {
//        sql = "call isic.sp_editarAsig('" + asi.getClave() + "','" + asi.getNombre() + "'," + asi.getSemestre()
//                + ",'" + asi.getHoras() + "','" + asi.getConocimiento() + "','" + asi.getClaveOri()
//                + "','" + asi.getIdespecialidadOri() + "'," + asi.getEspecialidad() + "," + asi.getOp() + ")";
        sql = "call isic.sp_editarAsig(?,?,?,?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql,asi.getClave(), asi.getNombre(), asi.getSemestre(), asi.getHoras(), 
                asi.getConocimiento(), asi.getClaveOri(), asi.getIdespecialidadOri(), asi.getEspecialidad(), asi.getOp());
        return new ModelAndView("redirect:/adminMallaCurricular.htm");
    }

    @RequestMapping("mallaCurricular.htm")
    public ModelAndView malla1(HttpServletRequest request) {
        int esp = Integer.parseInt(request.getParameter("sp"));
        List datos;
        this.getMalla(esp);
        sql = "call isic.sp_area()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("area", datos);
        sql = "call isic.sp_asignaturasEsp(" + esp + ")";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("mat", datos);
        mav.setViewName("mallaCurricular");
        return mav;
    }

    @RequestMapping("Investigacion.htm")
    public ModelAndView areaInvestigacion() {
        sql = "call isic.sp_lineaInvs()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("inv", datos);
        mav.setViewName("Investigacion");
        return mav;
    }
    
    @RequestMapping("adminInvestigacion.htm")
    public ModelAndView areaAdminInvestigacion() {
        sql = "call isic.sp_lineaInvs()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("inv", datos);
        mav.setViewName("adminInvestigacion");
        return mav;
    }

    @RequestMapping("Especialidad.htm")
    public ModelAndView EspecialidadUno(HttpServletRequest request) {
        int esp = Integer.parseInt(request.getParameter("sp"));
        sql = "call isic.sp_especialidad(" + esp + ")";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espInfo", datos);
        sql = "call isic.sp_asignaturasEsp(" + esp + ")";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espAsig", datos);
        sql = "call isic.sp_egreso(" + esp + ")";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("espEgr", datos);
        this.getMalla(esp);
        sql = "call isic.sp_area()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("area", datos);
        mav.setViewName("Especialidad");
        return mav;
    }
    @RequestMapping("adminEspecialidad.htm")
    public ModelAndView adminEspecialidad(HttpServletRequest request) {
        mav.setViewName("adminEspecialidad");
        return mav;
    }
      @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        String id = request.getParameter("id");
        sql = "call isic.sp_borraMalla('" + id + "')";
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/adminMallaCurricular.htm");
    }

    private void getMalla(int sp) {
        int esp = sp;
        List datos;
        for (int i = 1; i < 10; i++) {
            sql = "call isic.sp_malla(" + i + ", " + esp + ")";
            datos = this.jdbcTemplate.queryForList(sql);
            String aux = "as" + i;
            mav.addObject(aux, datos);
        }
    }
}
