using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using apiEmpleados.Context;
using apiEmpleados.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;


namespace apiEmpleados.Controllers
{
    [Route("api/[controller]")]
    public class EmpleadosController : Controller
    {
        private readonly AppDbContext context;
        public EmpleadosController(AppDbContext context)
        {
            this.context = context;
        }
    
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                return Ok(context.empleados.ToList());
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

       
        [HttpGet("{id}", Name ="GetEmpleado")]
        public ActionResult Get(int id)
        {
            try
            {
                var empleado = context.empleados.FirstOrDefault(g => g.Idempleado == id);
                return Ok(empleado);
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        
        [HttpPost]
        public ActionResult Post([FromBody]Empleados empleado)
        {
            try
            {
                context.empleados.Add(empleado);
                context.SaveChanges();
                return CreatedAtRoute("GetEmpleado", new { id = empleado.Idempleado }, empleado);
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }  
        }

   
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody]Empleados empleado)
        {
            try
            {
                if (empleado.Idempleado == id)
                {
                    context.Entry(empleado).State = EntityState.Modified;
                    context.SaveChanges();
                    return CreatedAtRoute("GetEmpleado", new { id = empleado.Idempleado }, empleado);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var empleado = context.empleados.FirstOrDefault(g => g.Idempleado == id);
                if (empleado != null)
                {
                    context.empleados.Remove(empleado);
                    context.SaveChanges();
                    return Ok(id);
                }
                else
                {
                    return BadRequest();
                }
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
