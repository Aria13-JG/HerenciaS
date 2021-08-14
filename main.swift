import Foundation
class Empleado{
  var nombre = ""
  var numEmpleado = 0
  var sueldo = 0

func setNombre ( nombre : String) -> Void{
  self.nombre = nombre
}

func getNombre() -> String{
  return nombre
}

func setNumEmpleado ( numEmpleado : Int) -> Void{
  self.numEmpleado = numEmpleado
}

func getNumEmpleado() -> Int{
  return numEmpleado
}

func setSueldo ( sueldo : Int) -> Void{
  if(sueldo<=0){
  self.sueldo = sueldo
  }
}

func getSueldo() -> Int{
  return sueldo
}

func aumentarSueldo ( porcentaje : Int) -> Void{
  sueldo += (Int)(sueldo * porcentaje/100);
}

//override
override func toString() -> String{
  return "Nombre: " + self.nombre + "\nNumero: " + self.numEmpleado + "\nSueldo: " + self.sueldo
}

class Gerente : Empleado{
  var presupuesto = 0
  func Gerente(nombre : String, sueldo : Int, numEmpleado : Int, presupuesto : Int){
    //super(nombre, sueldo, numEmpleado)
    self.presupuesto = presupuesto
  }
  func setPresupuesto ( presupuesto: Int) -> Void{
  self.presupuesto = presupuesto
  }

//override
override func toString() -> String{
  return "\(super.toString()) + \nPresupuesto:  + \(self.presupuesto)"
}}
}

class PruebaEmpleado{
  func main(String [] args) -> Void{
    Gerente;gerente = new;Gerente ("Luis Aguilar", 16000, 8524, 500000)
    //System.out.printIn(gerente)
    print(gerente)
  }
}
