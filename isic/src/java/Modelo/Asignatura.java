/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Alejandro
 */
public class Asignatura {
   
    String conocimiento;
    String clave;
    String nombre;
    String horas;
    String claveOri;
    int especialidad;
    int semestre;
    int op;
    int idconocimiento;
    int idespecialidad;
    int idespecialidadOri;

    public String getClaveOri() {
        return claveOri;
    }

    public void setClaveOri(String claveOri) {
        this.claveOri = claveOri;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    public String getConocimiento() {
        return conocimiento;
    }

    public void setConocimiento(String conocimiento) {
        this.conocimiento = conocimiento;
    }

    public int getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(int especialidad) {
        this.especialidad = especialidad;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getHoras() {
        return horas;
    }

    public void setHoras(String horas) {
        this.horas = horas;
    }

    public int getOp() {
        return op;
    }

    public void setOp(int op) {
        this.op = op;
    }

    public int getIdconocimiento() {
        return idconocimiento;
    }

    public void setIdconocimiento(int idconocimiento) {
        this.idconocimiento = idconocimiento;
    }

    public int getIdespecialidad() {
        return idespecialidad;
    }

    public void setIdespecialidad(int idespecialidad) {
        this.idespecialidad = idespecialidad;
    }

    public int getIdespecialidadOri() {
        return idespecialidadOri;
    }

    public void setIdespecialidadOri(int idespecialidadOri) {
        this.idespecialidadOri = idespecialidadOri;
    }

}
