/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import Modelo.Asignatura;
import Modelo.Especialidad;
import Modelo.Investigacion;
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
    @RequestMapping("administrador.htm")
    public ModelAndView administrador() {
        sql = "call isic.sp_especialidad_lista()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("listEsp", datos);
        return mav;
    }
    @RequestMapping("Login.htm")
    public ModelAndView login() {
        mav.setViewName("Login");
        return mav;
    }
    @RequestMapping("inicio.htm")
    public ModelAndView inicio2() {
        mav.setViewName("inicio");
        return mav;
    }
    @RequestMapping("footer.htm")
    public ModelAndView footer() {
        mav.setViewName("footer");
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
        sql = "call isic.sp_editarAsig(?,?,?,?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, asi.getClave(), asi.getNombre(), asi.getSemestre(), asi.getHoras(),
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

    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        String id = request.getParameter("id");
        sql = "call isic.sp_borraMalla('" + id + "')";
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/adminMallaCurricular.htm");
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
        sql = "call isic.sp_getTemaInv()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("tema", datos);
        sql = "call isic.sp_lineaInvs()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("inv", datos);
        sql = "call isic.sp_getDocente()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("doce", datos);
        mav.setViewName("adminInvestigacion");
        return mav;
    }
    
    @RequestMapping(value = "adminInvestigacion.htm", method = RequestMethod.POST)
    public ModelAndView areaAdminInvestigacion(Investigacion inv) {
        switch (inv.getOp()) {
            case 1:
                sql = "call isic.sp_editTemaIvs(?,?)";
                this.jdbcTemplate.update(sql, inv.getIdtemaInv(), inv.getTemaInv());
                break;
            case 2:
                sql = "call isic.sp_editarLineaInv(?,?,?,?,?)";
                this.jdbcTemplate.update(sql, inv.getTemaOri(), inv.getDocenteOri(), inv.getTema(), inv.getDocente(), inv.getCargo());
                break;
            default:
                break;
        }
        return new ModelAndView("redirect:/adminInvestigacion.htm");
    }
    
    @RequestMapping("deleteTemaInv.htm")
    public ModelAndView DeleteTemaInv(HttpServletRequest request) {
        String id = request.getParameter("id");
        sql = "call isic.sp_borrarTemaInv(?)";
        this.jdbcTemplate.update(sql, id);
        return new ModelAndView("redirect:/adminInvestigacion.htm");
    }
    
    @RequestMapping("desHabDocentInv.htm")
    public ModelAndView DesHabDocentInv(HttpServletRequest request) {
        String [] tmp = request.getParameter("id").split("_");
        sql = "call isic.sp_DesHabLineaInvDoc(?,?,?)";
        this.jdbcTemplate.update(sql, tmp[0], tmp[1], tmp[2]);
        return new ModelAndView("redirect:/adminInvestigacion.htm");
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
        sql = "call sp_getEspecialidadAdmin()";
        List datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("especialidad", datos);
        sql = "call isic.sp_getEgresoAdmin()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("egreso", datos);
        sql = "call isic.sp_getAsignaturaEspAdmin()";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("asiEsp", datos);
        mav.setViewName("adminEspecialidad");
        return mav;
    }

    @RequestMapping(value = "adminEspecialidad.htm", method = RequestMethod.POST)
    public ModelAndView adminEspecialidad(Especialidad esp) {
        switch (esp.getOp()) {
            case 1:
                sql = "call isic.sp_editarEsp(?,?,?)";
                this.jdbcTemplate.update(sql, esp.getIdespecialidad(), esp.getNombre(), esp.getObjetivo());
                break;
            case 2:
                sql = "call isic.sp_editPEgreso(?,?,?)";
                this.jdbcTemplate.update(sql, esp.getIdegreso(), esp.getPerfilOri(), esp.getPerfil());
                break;
            case 3:
                sql = "call isic.sp_editAsigEsp(?,?,?)";
                this.jdbcTemplate.update(sql, esp.getIdEsp(), esp.getClave(), esp.getDescripcion());
                break;
            default:
                break;
        }
        return new ModelAndView("redirect:/adminEspecialidad.htm");
    }

    @RequestMapping("deleteEspecialidad.htm")
    public ModelAndView DeleteEspecialidad(HttpServletRequest request) {
        String id = request.getParameter("id");
        sql = "call isic.sp_borrarEsp(?)";
        this.jdbcTemplate.update(sql, id);
        return new ModelAndView("redirect:/adminEspecialidad.htm");
    }

    @RequestMapping("deletePEgreso.htm")
    public ModelAndView DeletePEgreso(HttpServletRequest request) {
        String[] tmp = request.getParameter("id").split("_");
        sql = "call isic.sp_borrarPEgreso(?,?)";
        this.jdbcTemplate.update(sql, tmp[0], tmp[1]);
        return new ModelAndView("redirect:/adminEspecialidad.htm");
    }
    
    @RequestMapping("deleteAsigEsp.htm")
    public ModelAndView DeleteAsigEsp(HttpServletRequest request) {
        String[] tmp = request.getParameter("id").split("_");
        sql = "call isic.sp_borrarAsigEsp(?,?)";
        this.jdbcTemplate.update(sql, tmp[0], tmp[1]);
        return new ModelAndView("redirect:/adminEspecialidad.htm");
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