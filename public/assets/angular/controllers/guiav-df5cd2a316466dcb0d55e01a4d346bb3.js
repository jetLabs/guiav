!function(){var o=angular.module("guiaV",[]);o.controller("LaboratorioController",function(o,r){return o.laboratorios=[],r.get("./laboratorios.json").success(function(r){return o.laboratorios=r})}),o.controller("LogInController",["$scope","$http",function(o,r){o.username="",o.password="",o.remember="",o.valido=!1,o.invalido=!1,o.userValido=function(){console.log("userValido"),console.log("Usuario => "+o.username),console.log("Contrase\xf1a => "+o.password),console.log("Recordar => "+o.remember);var e=$.param({user:o.username,pass:o.password});r({url:"./valid_login",method:"POST",data:e,headers:{"Content-Type":"application/x-www-form-urlencoded"}}).success(function(r){return console.log("data "+r),console.log("data.correct "+r.correct),1==r.correct?(console.log("OK USUARIO"),o.valido=!0,o.invalido=!1):(console.log("ERROR USUARIO"),o.invalido=!0,o.valido=!1),!0}).error(function(){return!1})}}])}();